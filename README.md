# Hi there, I'm Elson Wu! 👋

Welcome to my GitHub profile! I'm a passionate developer who loves building tools and exploring programming language internals.

## 🚀 Featured Projects

### 🦀 [Jing Language](https://github.com/elsonwu/jing-lang) - A Simple Toy Language with Virtual Machine

[![Rust](https://img.shields.io/badge/Rust-000000?style=flat&logo=rust&logoColor=white)](https://github.com/elsonwu/jing-lang)
[![GitHub](https://img.shields.io/github/stars/elsonwu/jing-lang?style=social)](https://github.com/elsonwu/jing-lang)

A complete programming language implementation featuring:

- **Stack-based Virtual Machine** with custom bytecode
- **Modular Architecture** with plugin-like extensibility
- **Comprehensive Features**: Variables, functions, control flow, I/O operations
- **Built-in Functions**: Math, string manipulation, file operations
- **Educational Design** with extensive documentation and visual guides

```jing
// Example Jing code
fn fibonacci(n) {
    if n <= 1 {
        return n;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

let result = fibonacci(10);
print("Fibonacci(10) = " + str(result));
```

**Key Highlights:**

- 🏗️ Complete compilation pipeline: Lexer → Parser → Compiler → VM
- 📚 Extensive documentation with beginner-friendly guides
- 🔧 Easy to extend with new built-in functions
- 🧪 Comprehensive test suite with integration tests

---

### 🔧 [Git-RS](https://github.com/elsonwu/git-rs) - Educational Git Implementation

[![Rust](https://img.shields.io/badge/Rust-000000?style=flat&logo=rust&logoColor=white)](https://github.com/elsonwu/git-rs)
[![GitHub](https://img.shields.io/github/stars/elsonwu/git-rs?style=social)](https://github.com/elsonwu/git-rs)

A minimal Git implementation built from scratch to understand version control internals:

- **Core Git Commands**: `init`, `add`, `status` (with `commit`, `diff`, `clone` in development)
- **Domain-Driven Design** with clean architecture separation
- **Educational Focus** with detailed internals documentation
- **Safe Learning Environment** using `.git-rs/` to avoid conflicts with real Git repos

```bash
# Initialize a repository
git-rs init

# Stage files with content-addressed storage
git-rs add README.md src/

# Check status with three-tree comparison
git-rs status
```

**Key Highlights:**

- 🧠 Deep dive into Git's object model (blobs, trees, commits)
- 🗂️ Content-addressed storage with SHA-1 hashing
- 📊 Visual guides explaining Git's three-tree architecture
- 🔍 Safe to experiment with alongside real Git repositories

---

## 🛠️ Technologies & Skills

**Languages & Frameworks:**

- ![Rust](https://img.shields.io/badge/Rust-000000?style=flat&logo=rust&logoColor=white) **Rust** - Systems programming, performance, safety
- ![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=flat&logo=javascript&logoColor=black) **JavaScript/TypeScript** - Full-stack development
- ![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white) **Python** - Automation, scripting, data processing

**Specializations:**

- 🦀 **Systems Programming** - Low-level implementations, memory management
- 🏗️ **Language Design** - Compilers, interpreters, virtual machines
- 📚 **Educational Software** - Clear documentation, learning-focused design
- 🔧 **Developer Tools** - CLI applications, development utilities

**Architecture & Design:**

- **Domain-Driven Design** - Clean architecture with separated concerns
- **Test-Driven Development** - Comprehensive test suites
- **Documentation-First** - Extensive guides and visual explanations

---

## 📊 GitHub Activity

### 📈 GitHub Stats

![Elson's GitHub Stats](https://github-readme-stats.vercel.app/api?username=elsonwu&show_icons=true&theme=radical&hide_border=true)

![Top Languages](https://github-readme-stats.vercel.app/api/top-langs/?username=elsonwu&layout=compact&theme=radical&hide_border=true)

---

## 🎯 What I'm Working On

- 🚧 **Jing Language**: Adding arrays, objects, and import/module system
- 🔄 **Git-RS**: Implementing `commit`, `diff`, and `clone` commands
- 📚 **Learning**: Exploring advanced compiler optimizations and JIT compilation
- 🛠️ **Tools**: Building developer productivity tools in Rust

---

## 📚 Learning Philosophy

I believe in **learning by building**. Each project is designed to:

- 🎯 **Solve Real Problems** - Even toy projects have practical applications
- 📖 **Teach Others** - Comprehensive documentation and visual guides
- 🧪 **Experiment Safely** - Safe environments to explore complex concepts
- 🏗️ **Build Incrementally** - Start simple, add complexity gradually

---

## 🌱 Currently Learning

- **Advanced Rust**: Async programming, unsafe code, performance optimization
- **Compiler Design**: LLVM backend integration, optimization passes
- **WebAssembly**: Targeting Jing language to WASM
- **Distributed Systems**: Understanding Git's distributed architecture

---

## 📫 Let's Connect

- 💬 **Ask me about**: Rust, programming languages, compilers, Git internals
- 🤝 **Open to**: Collaboration on educational projects, code reviews, mentoring
- 📧 **Reach me**: Through GitHub issues on any of my repositories

---

## 🔗 Quick Links

- 🌐 **Jing Language Docs**: [Comprehensive Documentation](https://github.com/elsonwu/jing-lang/blob/main/docs/)
- 🔧 **Git-RS Architecture**: [Technical Deep Dive](https://github.com/elsonwu/git-rs/blob/main/docs/ARCHITECTURE.md)
- 📚 **Learning Resources**: Check out the `/docs` folders in my repos for detailed guides

---

> "The best way to understand how something works is to build it yourself."

![Visitor Count](https://visitor-badge.laobi.icu/badge?page_id=elsonwu.elsonwu)
