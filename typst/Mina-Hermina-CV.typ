// vim: filetype=typst

#set page(
  paper: "a4",
  margin: (top: 0.4in, bottom: 0.7in, left: 0.4in, right: 0.4in),
  numbering: "1"
)

#set text(
  font: "Crimson Text",
  size: 10pt,
)

#set par(
  spacing: 6pt,
  first-line-indent: 0pt,
)

// Header with name and contact info
#text(size: 16pt, weight: "bold")[Mina Albert Saeed Hermina] \
#align(left)[
  #link("mailto:mina.albert.saeed@gmail.com")[mina.albert.saeed\@gmail.com] \
  #link("https://www.linkedin.com/in/minaalbert")[linkedin.com/in/minaalbert] \
  #link("https://github.com/minahermina")[github.com/minahermina] \
  Egypt
]

#v(10pt)

// Summary Section
#text(weight: "bold", size: 10pt)[SUMMARY]
#line(length: 100%, stroke: 0.8pt)
#v(2pt)

A motivated computer science student specializing in IT, with a strong passion for GNU/Linux, networks, and operating systems. Enthusiastic about their evolution from inception to the present, I am eager to apply my knowledge in real-world projects. Seeking an internship in *Linux/Unix Systems Engineering or Programming* to contribute my skills while gaining hands-on experience.

#v(10pt)

// Extracurriculars Section
#text(weight: "bold", size: 10pt)[EXTRACURRICULARS]
#line(length: 100%, stroke: 0.8pt)
#v(2pt)

#table(
  columns: (1fr, auto),
  inset: 0pt,
  stroke: none,
  align: (left, right),
  [*IEEE Cairo University Student Branch*],
  [*March 2024 -- June 2024*]
)
Networks Instructor
#pad(left: 1.5em)[
  - Contributing to the development of technical content for the committee sessions and 
    instructing real 
    \ sessions for network committee members
]
#v(10pt)

// Skills & Languages Section
#text(weight: "bold", size: 10pt)[SKILLS & LANGUAGES]
#line(length: 100%, stroke: 0.8pt)

#v(2pt)

*Technical skills & TOOLS:* \
#pad(left: 1.5em)[
  • C, C++, Python, Java, OOP, and Data structures \
  • GNU/Linux, Bash, and docker \ 
  • Basic understanding of TCP/IP Protocols Suite \ 
  • Git, GitHub, vim, tmux \
]

*Languages:*
#pad(left: 1.5em)[
  - Arabic: Native proficiency
  - English: Intermediate proficiency (B1)
]

#v(8pt)

// Projects Section
#text(weight: "bold", size: 10pt)[PROJECTS]
#line(length: 100%, stroke: 0.8pt)
#v(2pt)

#table(
  columns: (1fr, auto),
  inset: 0pt,
  stroke: none,
  align: (left, right),
  [*Arena Allocator*], [*February 2025 -- March 2025*]
)
#pad(left: 1.5em)[
  - Implemented a custom single-header region-based memory allocator in C using *mmap*, following 
    \ the *stb-style headers*.
  - Designed an efficient memory management system with features including *page-aligned* allocations,
    \ and memory usage tracking.
]

#v(10pt)

#table(
  columns: (1fr, auto),
  inset: 0pt,
  stroke: none,
  align: (left, right),
  [*imglib*], [*November 2024 -- January 2025*]
)

#pad(left: 1.5em)[
  - Developed a lightweight, portable C library for image manipulation on Unix-like systems.
  - Followed the Suckless C coding style and wrote a portable Makefile, avoiding GNU-specific extensions.
  - Implemented efficient pixel access using stride-based indexing for performance optimization.
]

#v(10pt)

#table(
  columns: (1fr, auto),
  inset: 0pt,
  stroke: none,
  align: (left, right),
  [*Linux Kernel With lockdep*], [*April 2024*]
)
#pad(left: 1.5em)[
  - Configured and built the Linux kernel to enable lockdep module which helps in debugging 
    \ deadlocks  in kernel space, replacing the new custom kernel into my system and using it.
]

#v(10pt)

#table(
  columns: (1fr, auto),
  inset: 0pt,
  stroke: none,
  align: (left, right),
  [*POSIX Compliant Shell scripts Creation*], [*September 2023 - September 2024*]
)
#pad(left: 1.5em)[
  - Building POSIX-compliant shell scripts to automate daily tasks on my system like spinning up 
    \ a virtual machine, unarchiving archive files and screen casting.
]

#v(10pt)

// Education Section
#text(weight: "bold", size: 10pt)[EDUCATION]
#line(length: 100%, stroke: 0.8pt)
#v(2pt)

#table(
  columns: (1fr, auto),
  inset: 0pt,
  stroke: none,
  align: (left, right),
  [Faculty of Computers and Artificial Intelligence, IT Department, Cairo university.],
  [*October 2021 -- Current*]
)
#pad(left: 1.5em)[
- Bachelor's Degree in Information Technology
]

#v(10pt)

// Certificates Section
#text(weight: "bold", size: 10pt)[CERTIFICATES]
#line(length: 100%, stroke: 0.8pt)
#v(2pt)

#pad(left: 1.5em)[
  - CCNA: Introduction to Networks #h(1fr) *July 2024 -- August 2024*
  - CCNA: Switching, Routing, and Wireless Essentials #h(1fr) *July 2024 -- August 2024*
]

