// vim: set ts=4 sw=4 et:
// vim: filetype=typst

#show heading: it => [
  #set block(above: 10pt, below: 5pt)
  #it
]

#show heading.where(level: 3): set text(size: 11pt)
#show heading.where(level: 2): set text(size: 12pt)

#show link: underline

#set page(
    paper: "a4",
    margin: (top: 0.4in, bottom: 0.4in, left: 0.4in, right: 0.4in),
)

#set text(
    size: 10.4pt,
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


#let def_section(title, content) = {
    heading(level: 2)[#title]
    line(length: 100%, stroke: 0.8pt)
    v(2pt)
    content
    v(5pt)
}

// Left padding of list items (bullet points)
#let list_padding = 1.5em
// Vertical margin between sections
#let vert_margin = 8pt

#let def_project(name, languages: none, url: none, date: none, content) = {
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
            }) #text(rgb(64, 64, 64), style: "italic")[#languages]
        ], [*#date*])

    pad(left: list_padding)[
        #content
    ]
    v(vert_margin)
}

// Edit this contact_info map don't edit the Header code itself!!
#let contact_info = (
    name:     "Mina Albert Saeed Hermina",
    mail:     "mina.albert.saeed@gmail.com",
    phone:     "+201272937424",
    linkedin: "minaalbert",
    github:   "minahermina",
    country:  "Egypt",
)

#let def_header() = {
    text(size: 17pt, weight: "bold")[#contact_info.name]
    v(vert_margin)
    align(left)[
        // Email
        #link("mailto:" + contact_info.mail)[
            #text(size: 11.5pt, style: "italic")[
                #contact_info.mail
            ]
        ] \ 

        // Linkedin
        #link("https://www.linkedin.com/in/" + contact_info.linkedin)[
            #text(size: 11.5pt, style: "italic")[
                linkedin.com/in/#contact_info.linkedin
            ]
        ]  \

        // Github
        #link("https://github.com/" + contact_info.github)[
            #text(size: 11.5pt, style: "italic")[
                github.com/in/#contact_info.github
            ]
        ] \

        // Phone
        #text(size: 11.5pt, style: "italic")[
            #contact_info.phone

        ]

        // Country
        #text(size: 11.5pt, style: "italic")[
            #contact_info.country
        ]
        #v(vert_margin)
    ]
}

// Header with name and contact info
#def_header()

#def_section("SUMMARY", [
    I am a senior Computer Science student specializing in IT, with a strong passion for GNU/Linux, Unix systems,
    and Systems Programming, and a deep interest in their evolution from inception to the present.
    I am seeking an internship in *Linux/Unix Systems Engineering or Programming* 
    to contribute my skills while gaining hands-on experience in read-world projects.
])

#def_section("EXTRACURRICULARS",[
    #table(
        columns: (1fr, auto),
        inset: 0pt,
        stroke: none,
        align: (left, right),
        [*IEEE Cairo University Student Branch*],
        [*March 2024 - June 2024*]
    )
    Networks Instructor
    #pad(left: list_padding)[
        - Contributing to the development of technical content for the committee sessions and 
          \ instructing real sessions for network committee members
    ]
])

#def_section("SKILLS & LANGUAGES", [
    #text(size: 11pt)[*Technical skills & Tools:*]
    #pad(left: list_padding)[
        - C, C++, Python, Java, OOP, and Data structures \
        - GNU/Linux, Bash, and docker \ 
        - Basic understanding of TCP/IP Protocols Suite \ 
        - Git, GitHub, vim, and tmux \
    ]

    #text(size: 11pt)[*Languages:*]
    #pad(left: list_padding)[
        - Arabic: Native proficiency
        - English: Intermediate proficiency (B1)
    ]
])

#def_section("PROJECTS", [

    #def_project("BigNum",
        url: "https://github.com/minahermina/BigNum.git", 
        date: "April 2025 - June 2025", 
        [
        - Developed a C99 arbitrary-precision arithmetic library for cryptographic applications,  with 
          \ architecture-dependent 32/64-bit word representation using arena allocation for memory management.
        - Designed a robust API interface by studying *OpenSSL* and *libtommath* libraries, and 
           implemented \ core big number algorithms such as Euclidean division and modular inverse.
    ])

    #def_project("Arena Allocator",
        url: "https://github.com/minahermina/arena-allocator-in-C.git", 
        date: "February 2025 - March 2025", 
        [
        - Implemented a custom single-header *thread safe* region-based memory allocator in C using *mmap*, following 
          \ the *stb-style headers*.
        - Designed an efficient memory management system with features including *page-aligned* allocations, 
          \ and memory usage tracking.
    ])

    #def_project("imglib",
        url: "https://github.com/minahermina/imglib.git", 
        date: "November 2024 - January 2025", [
        - Developed a lightweight, portable C library for image manipulation on Unix-like systems.
        - Followed the Suckless C coding style and wrote a portable Makefile, avoiding GNU-specific extensions.
        - Implemented robust error handling system inspired by *ffmpeg* and stride-based indexing for efficient pixel access.
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
        [Faculty of Computers and Artificial Intelligence at Cairo university.],
        [*October 2021 - Present*]
    )
    #pad(left: list_padding)[
        - Bachelor's Degree in Information Technology
    ]

])

#def_section("CERTIFICATES", [
    #pad(left: list_padding)[
        - CCNA: Introduction to Networks #h(1fr) *July 2024 -- August 2024*
        - CCNA: Switching, Routing, and Wireless Essentials #h(1fr) *July 2024 -- August 2024*
    ]

])
