
import 'package:flutter/material.dart';

void main() {
  runApp(const SetaraApp());
}

const navy = Color(0xFF002961);
const yellow = Color(0xFFFFCF31);
const orange = Color(0xFFE79A2F);
const blue = Color(0xFF3182FF);
const grey = Color(0xFFEEEEEE);

class SetaraApp extends StatelessWidget {
  const SetaraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Setara',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: navy),
        fontFamily: 'Roboto',
      ),
      home: const SplashPage(),
    );
  }
}

class SetaraButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool primary;

  const SetaraButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.primary = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 46,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: primary ? yellow : Colors.white,
          foregroundColor: primary ? navy : navy,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// LOGO
class SetaraLogo extends StatelessWidget {
  final double size;
  final bool showText;

  const SetaraLogo({
    super.key,
    this.size = 80,
    this.showText = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.diversity_3,
          color: yellow,
          size: size,
        ),
        if (showText)
          const Text(
            'Setara',
            style: TextStyle(
              color: Colors.white,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
      ],
    );
  }
}

// SPLASH SCREEN
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navy,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SetaraLogo(size: 110),
              const SizedBox(height: 12),
              const Text(
                '"Kesempatan kerja yang adil,\nuntuk semua."',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: SetaraButton(
                  text: 'Mulai',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const WelcomePage(),
                      ),
                    );
                  },
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const LoginPage(),
                    ),
                  );
                },
                child: const Text(
                  'Lewati',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// WELCOME PAGE
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SetaraLogo(size: 100, showText: false),
              const Text(
                'Setara',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: navy,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Karier yang inklusif untuk masa depan yang setara',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: navy,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Temukan peluang kerja, tingkatkan kemampuan, '
                    'dan wujudkan lingkungan kerja yang inklusif.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              SetaraButton(
                text: 'Lanjut',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const LoginPage(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 8),
              SetaraButton(
                text: 'Lewati',
                primary: false,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const LoginPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// LOGIN PAGE
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Masuk ke Setara'),
        foregroundColor: navy,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: SetaraLogo(size: 60, showText: false)),
            const SizedBox(height: 25),
            const Text(
              'Selamat Datang',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: navy,
              ),
            ),
            const SizedBox(height: 8),
            const Text('Masuk untuk melanjutkan perjalanan kariermu.'),
            const SizedBox(height: 28),
            const Text('Email atau No. HP'),
            const SizedBox(height: 8),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: 'Masukkan email atau nomor HP',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 18),
            const Text('Password'),
            const SizedBox(height: 8),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Masukkan password',
                border: OutlineInputBorder(),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text('Lupa password?'),
              ),
            ),
            SetaraButton(
              text: 'Lanjut',
              onPressed: () {
                if (emailController.text.trim().isEmpty ||
                    passwordController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Email dan password wajib diisi.'),
                    ),
                  );
                  return;
                }

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const MainPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 18),
            const Center(child: Text('atau')),
            const SizedBox(height: 14),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.g_mobiledata),
              label: const Text('Lanjutkan dengan Google'),
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(double.infinity, 46),
              ),
            ),
            const SizedBox(height: 12),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.apple),
              label: const Text('Lanjutkan dengan Apple'),
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(double.infinity, 46),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// MAIN NAVIGATION
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  final pages = const [
    HomePage(),
    JobsPage(),
    LearningPage(),
    CommunityPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() => selectedIndex = index);
        },
        indicatorColor: yellow.withValues(alpha: 0.45),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Beranda',
          ),
          NavigationDestination(
            icon: Icon(Icons.work_outline),
            label: 'Lowongan',
          ),
          NavigationDestination(
            icon: Icon(Icons.school_outlined),
            label: 'Belajar',
          ),
          NavigationDestination(
            icon: Icon(Icons.forum_outlined),
            label: 'Forum',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}

// HOME PAGE
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Row(
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Halo, User 👋'),
                      SizedBox(height: 4),
                      Text(
                        'Semangat untuk hari ini!',
                        style: TextStyle(
                          color: navy,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_none),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Cari pekerjaan, perusahaan...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 22),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: navy,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Pelatihan Singkat',
                    style: TextStyle(
                      color: yellow,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Tingkatkan skill dan persiapkan kariermu '
                        'di lingkungan kerja inklusif.',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: 150,
                    child: SetaraButton(
                      text: 'Mulai Belajar',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const LearningPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Akses Cepat',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: navy,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                quickAction(Icons.work_outline, 'Lowongan'),
                quickAction(Icons.accessibility_new, 'Aksesibilitas'),
                quickAction(Icons.forum_outlined, 'Forum'),
              ],
            ),
            const SizedBox(height: 24),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lowongan Terbaru',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: navy,
                  ),
                ),
                Text('Lihat Semua'),
              ],
            ),
            const SizedBox(height: 12),
            const JobCard(
              company: 'Maju Bersama',
              title: 'Staff Administrasi',
              location: 'Jakarta • Full Time',
            ),
            const JobCard(
              company: 'Digital Kreatif',
              title: 'Desainer Grafis',
              location: 'Remote • Full Time',
            ),
          ],
        ),
      ),
    );
  }

  Widget quickAction(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: yellow.withValues(alpha: 0.35),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(icon, color: navy, size: 28),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

// JOB CARD
class JobCard extends StatelessWidget {
  final String company;
  final String title;
  final String location;

  const JobCard({
    super.key,
    required this.company,
    required this.title,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: grey),
        borderRadius: BorderRadius.circular(14),
      ),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: navy,
          child: Icon(Icons.business, color: Colors.white),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('$company\n$location'),
        isThreeLine: true,
        trailing: const Icon(Icons.chevron_right, color: navy),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => JobDetailPage(
                company: company,
                title: title,
                location: location,
              ),
            ),
          );
        },
      ),
    );
  }
}

// JOB LIST
class JobsPage extends StatelessWidget {
  const JobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cari Lowongan')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Cari pekerjaan atau perusahaan',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Filter Pekerjaan',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            children: [
              'Semua',
              'Full Time',
              'Remote',
              'Part Time',
            ].map((label) => Chip(label: Text(label))).toList(),
          ),
          const JobCard(
            company: 'Maju Bersama',
            title: 'Staff Administrasi',
            location: 'Jakarta • Full Time',
          ),
          const JobCard(
            company: 'Digital Kreatif',
            title: 'Desainer Grafis',
            location: 'Remote • Full Time',
          ),
          const JobCard(
            company: 'Teknologi Setara',
            title: 'Customer Support',
            location: 'Bandung • Part Time',
          ),
        ],
      ),
    );
  }
}

// JOB DETAIL
class JobDetailPage extends StatelessWidget {
  final String company;
  final String title;
  final String location;

  const JobDetailPage({
    super.key,
    required this.company,
    required this.title,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Lowongan')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const CircleAvatar(
            radius: 32,
            backgroundColor: navy,
            child: Icon(Icons.business, color: Colors.white, size: 32),
          ),
          const SizedBox(height: 18),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: navy,
            ),
          ),
          Text(company),
          const SizedBox(height: 8),
          Text(location),
          const Divider(height: 32),
          const Text(
            'Deskripsi Pekerjaan',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 8),
          const Text(
            'Bergabunglah bersama tim kami untuk mendukung '
                'lingkungan kerja yang profesional, terbuka, dan inklusif.',
          ),
          const SizedBox(height: 22),
          const Text(
            'Fasilitas Aksesibilitas',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.accessible, color: navy),
            title: Text('Lingkungan kerja inklusif'),
          ),
          const ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.home_work_outlined, color: navy),
            title: Text('Pilihan kerja fleksibel'),
          ),
          const SizedBox(height: 20),
          SetaraButton(
            text: 'Lamar Sekarang',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Fitur lamaran masih berupa demo.'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// ACCESSIBILITY SETTINGS
class AccessibilityPage extends StatefulWidget {
  const AccessibilityPage({super.key});

  @override
  State<AccessibilityPage> createState() => _AccessibilityPageState();
}

class _AccessibilityPageState extends State<AccessibilityPage> {
  bool screenReader = true;
  bool largeText = false;
  bool captions = true;
  bool contrast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Aksesibilitas')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Kebutuhan Khusus',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Pilih kebutuhan agar pengalaman menggunakan aplikasi '
                'lebih nyaman.',
          ),
          SwitchListTile(
            title: const Text('Pembaca layar'),
            value: screenReader,
            onChanged: (v) => setState(() => screenReader = v),
          ),
          SwitchListTile(
            title: const Text('Teks berukuran besar'),
            value: largeText,
            onChanged: (v) => setState(() => largeText = v),
          ),
          SwitchListTile(
            title: const Text('Teks dan caption'),
            value: captions,
            onChanged: (v) => setState(() => captions = v),
          ),
          SwitchListTile(
            title: const Text('Kontras tinggi'),
            value: contrast,
            onChanged: (v) => setState(() => contrast = v),
          ),
          const SizedBox(height: 20),
          SetaraButton(
            text: 'Simpan',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Pengaturan demo berhasil disimpan.'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// MICRO LEARNING
class LearningPage extends StatelessWidget {
  const LearningPage({super.key});

  @override
  Widget build(BuildContext context) {
    final courses = [
      'Komunikasi Efektif di Tempat Kerja',
      'Dasar-Dasar Penggunaan Komputer',
      'Manajemen Waktu',
      'Persiapan Kerja',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Micro-Learning')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 0,
            margin: const EdgeInsets.only(bottom: 12),
            color: grey,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.play_circle_outline, color: navy),
              ),
              title: Text(courses[index]),
              subtitle: const Text('5–10 menit'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CourseDetailPage(title: courses[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class CourseDetailPage extends StatelessWidget {
  final String title;

  const CourseDetailPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Materi Belajar')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.school, size: 70, color: navy),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Pelajari materi ini untuk meningkatkan kemampuan '
                  'dan kesiapan menghadapi dunia kerja.',
            ),
            const Spacer(),
            SetaraButton(
              text: 'Mulai Materi',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Materi demo dimulai.'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// COMMUNITY
class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Forum Komunitas')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          CommunityPost(
            name: 'Rina Wijaya',
            time: '2 jam yang lalu',
            content:
            'Ada tips untuk mempersiapkan wawancara kerja '
                'pertama kali?',
            likes: 12,
          ),
          CommunityPost(
            name: 'Bambang',
            time: '5 jam yang lalu',
            content:
            'Tetap semangat belajar dan berkembang. '
                'Mari saling mendukung!',
            likes: 8,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: yellow,
        foregroundColor: navy,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const CreatePostPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CommunityPost extends StatelessWidget {
  final String name;
  final String time;
  final String content;
  final int likes;

  const CommunityPost({
    super.key,
    required this.name,
    required this.time,
    required this.content,
    required this.likes,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: grey),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(time, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 12),
            Text(content),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.favorite_border, color: navy),
                const SizedBox(width: 6),
                Text('$likes suka'),
                const Spacer(),
                const Icon(Icons.chat_bubble_outline, color: navy),
                const SizedBox(width: 6),
                const Text('Komentar'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({super.key});

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buat Postingan')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller,
              maxLines: 6,
              decoration: const InputDecoration(
                hintText: 'Bagikan cerita atau pertanyaanmu...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            SetaraButton(
              text: 'Publikasikan',
              onPressed: () {
                if (controller.text.trim().isEmpty) return;

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Postingan demo berhasil dibuat.',
                    ),
                  ),
                );
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

// PROFILE
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              color: navy,
              padding: const EdgeInsets.all(28),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 42,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: navy,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Pengguna Setara',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Member Setara',
                    style: TextStyle(color: yellow),
                  ),
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.work_outline, color: navy),
              title: Text('Lamaran Saya'),
              trailing: Icon(Icons.chevron_right),
            ),
            const ListTile(
              leading: Icon(Icons.bookmark_border, color: navy),
              title: Text('Lowongan Tersimpan'),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: const Icon(Icons.accessibility_new, color: navy),
              title: const Text('Aksesibilitas'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const AccessibilityPage(),
                  ),
                );
              },
            ),
            const ListTile(
              leading: Icon(Icons.settings_outlined, color: navy),
              title: Text('Pengaturan'),
              trailing: Icon(Icons.chevron_right),
            ),
            const ListTile(
              leading: Icon(Icons.help_outline, color: navy),
              title: Text('Bantuan & Dukungan'),
              trailing: Icon(Icons.chevron_right),
            ),
          ],
        ),
      ),
    );
  }
}
