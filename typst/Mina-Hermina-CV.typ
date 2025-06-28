// vim: set ts=4 sw=4 et:
// vim: filetype=typst

#show heading: it => [
  #set block(above: 10pt, below: 5pt)
  #it
]

#set page(
    paper: "a4",
    margin: (top: 0.4in, bottom: 0.4in, left: 0.4in, right: 0.4in),
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

#set document(
  title: "Mina Hermina's CV",
  author: "Mina Hermina",
  keywords: ("Mina Hermina", "CV", "typst"),
  date: datetime.today(),
)

#show heading.where(level: 3): set text(size: 11pt)

#let def_section(title, content) = {
    heading(level: 2)[#title]
    line(length: 100%, stroke: 0.8pt)
    v(2pt)
    content
    v(5pt)
}

#let list-padding = 1.5em

#let def_project(name, url: none, date: none, content) = {
    table(
        columns: (1fr, auto),
        inset: 0pt,
        stroke: none,
        align: (left, right),
        [#heading(level: 3, 
            if url != none {
                link(url)[#name]
            } else {
                name
            })
        ], [*#date*])

    pad(left: list-padding)[
        #content
    ]

    v(5pt)
}

// ---------------------------------------------------------------
// Header with name and contact info
#text(size: 17pt, weight: "bold")[Mina Albert Saeed Hermina] \
#align(left)[
    #link("mailto:mina.albert.saeed@gmail.com")[mina.albert.saeed\@gmail.com] \
    #link("https://www.linkedin.com/in/minaalbert")[linkedin.com/in/minaalbert] \
    #link("https://github.com/minahermina")[github.com/minahermina] \
    Egypt
    #v(8pt)
]

#def_section("SUMMARY", [
    A motivated computer science student specializing in IT, with a strong passion for GNU/Linux,
    networks, and operating systems. Enthusiastic about their evolution from inception to the present,
    I am eager to apply my knowledge in real-world projects. Seeking an internship in *Linux/Unix Systems Engineering or Programming* 
    to contribute my skills while gaining hands-on experience.
])

#def_section("EXTRACURRICULARS",[
    #table(
        columns: (1fr, auto),
        inset: 0pt,
        stroke: none,
        align: (left, right),
        [*IEEE Cairo University Student Branch*],
        [*March 2024 -- June 2024*]
    )
    Networks Instructor
    #pad(left: list-padding)[
        - Contributing to the development of technical content for the committee sessions and 
          \ instructing real sessions for network committee members
    ]
])

#def_section("SKILLS & LANGUAGES", [
    #text(size: 11pt)[*Technical skills & TOOLS:*]
    #pad(left: list-padding)[
        • C, C++, Python, Java, OOP, and Data structures \
        • GNU/Linux, Bash, and docker \ 
        • Basic understanding of TCP/IP Protocols Suite \ 
        • Git, GitHub, vim, tmux \
    ]

    #text(size: 11pt)[*Languages:*]
    #pad(left: list-padding)[
        - Arabic: Native proficiency
        - English: Intermediate proficiency (B1)
    ]
])

#def_section("PROJECTS", [

    #def_project("BigNum",
        url: "https://github.com/minahermina/BigNum.git", 
        date: "April 2025 – June 2025", 
        [
        - Developed a C99 arbitrary-precision arithmetic library for cryptographic applications,  with 
          \ architecture-dependent 32/64-bit word representation using arean allocation for memory management.
        - Designed a robust API interface by studying *OpenSSL* and *libtommath* libraries, and 
           implemented \ core big number algorithms such as Euclidean division and modular inverse.
    ])

    #def_project("Arena Allocator",
        url: "https://github.com/minahermina/arena-allocator-in-C.git", 
        date: "February 2025 – March 2025", 
        [
        - Implemented a custom single-header region-based memory allocator in C using *mmap*, following 
          \ the *stb-style headers*.
        - Designed an efficient memory management system with features including *page-aligned* allocations, 
          \ and memory usage tracking.
    ])

    #def_project("imglib",
        url: "https://github.com/minahermina/imglib.git", 
        date: "November 2024 -- January 2025", [
        - Developed a lightweight, portable C library for image manipulation on Unix-like systems.
        - Followed the Suckless C coding style and wrote a portable Makefile, avoiding GNU-specific extensions.
        - Implemented efficient pixel access using stride-based indexing for performance optimization.
        ]
    )

    #def_project("Linux Kernel With lockdep", 
        url: "https://github.com/minahermina/Kernel-Config-with-lockdep-module", 
        date: "April 2024", 
        [
        - Configured and built the Linux kernel to enable lockdep module which helps in debugging 
          \ deadlocks  in kernel space, replacing the new custom kernel into my system and using it.
    ])

])

#def_section("EDUCATION", [
    #table(
        columns: (1fr, auto),
        inset: 0pt,
        stroke: none,
        align: (left, right),
        [Faculty of Computers and Artificial Intelligence, IT Department, Cairo university.],
        [*October 2021 -- Current*]
    )
    #pad(left: list-padding)[
        - Bachelor's Degree in Information Technology
    ]

])

#def_section("CERTIFICATES", [
    #pad(left: list-padding)[
        - CCNA: Introduction to Networks #h(1fr) *July 2024 -- August 2024*
        - CCNA: Switching, Routing, and Wireless Essentials #h(1fr) *July 2024 -- August 2024*
    ]

])

// ---------------------------------------------------------------
