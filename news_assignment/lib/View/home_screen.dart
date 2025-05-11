import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_assignment/controller/article_provider.dart';
import 'package:provider/provider.dart';
import 'article_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    final provider = Provider.of<ArticleProvider>(context, listen: false);
    provider.fetchArticles();
    provider.loadFavorites();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ArticleProvider>(context);

    return Scaffold(
      appBar: AppBar(
  elevation: 0,
  backgroundColor: Colors.transparent,
  flexibleSpace: Stack(
    fit: StackFit.expand,
    children: [
      Image.network(
        'https://images.unsplash.com/photo-1498050108023-c5249f4df085?fit=crop&w=800&q=80',
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Container(
          color: Colors.grey,
          child: const Center(
            child: Text(
              'Image load failed',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      Container(
        color: Colors.black.withOpacity(0.3), // Dark overlay for readability
      ),
    ],
  ),
  bottom: PreferredSize(
    preferredSize: const Size.fromHeight(60),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onChanged: Provider.of<ArticleProvider>(context, listen: false).searchArticles,
        decoration: const InputDecoration(
          hintText: 'Search...',
          prefixIcon: Icon(Icons.search),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
      ),
    ),
  ),
),

      body: Stack(
        children: [
          // Network background image
          Positioned.fill(
            child: Image.network(
              'https://images.unsplash.com/photo-1515879218367-8466d910aaa4?fit=crop&w=800&q=80',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const Center(
                child: Text('Failed to load background image', style: TextStyle(color: Colors.white)),
              ),
              loadingBuilder: (context, child, progress) {
                if (progress == null) return child;
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),

          // Foreground content
          provider.isLoading
              ? const Center(child: CircularProgressIndicator())
              : provider.error.isNotEmpty
                  ? Center(child: Text(provider.error, style: const TextStyle(color: Colors.white)))
                  : RefreshIndicator(
                      onRefresh: provider.fetchArticles,
                      child: ListView.builder(
                        itemCount: provider.articles.length,
                        itemBuilder: (context, index) {
                          final article = provider.articles[index];
                          return Card(
                            color: Colors.white.withOpacity(0.9),
                            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                            child: ListTile(
                              title: Text(
                                article['title'],
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              subtitle: Text(
                                article['body'].toString().substring(0, 50) + '...',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  //fontWeight: FontWeight.w300,
                                ),
                              ),
                              trailing: IconButton(
                                icon: Icon(
                                  provider.favorites.contains(article['id'])
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: Colors.red,
                                ),
                                onPressed: () =>
                                    provider.toggleFavorite(article['id']),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>
                                        ArticleDetailPage(article: article),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
        ],
      ),
    );
  }
}
