// vim: set ts=4 sw=4 et:
// vim: filetype=typst

#show heading: it => [
  #set block(above: 10pt, below: 5pt)
  #it
]

#show heading.where(level: 3): set text(size: 11pt)
#show heading.where(level: 2): set text(size: 12pt)

#show link: underline
#set list(spacing: 1em)

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

#let def_experience(title, company, date, content) = {
    table(
        columns: (1fr, auto),
        inset: 0pt,
        stroke: none,
        align: (left, right),
           [#heading(level: 3, title) #text(rgb(64, 64, 64), style: "italic", weight: "bold", size: 12pt)[#company]
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
    phone:     "+201030327762",
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
            #text(size: 11.5pt)[
                #contact_info.mail
            ]
        ] \ 

        // Linkedin
        #link("https://www.linkedin.com/in/" + contact_info.linkedin)[
            #text(size: 11.5pt)[
                linkedin.com/in/#contact_info.linkedin
            ]
        ]  \

        // Github
        #link("https://github.com/" + contact_info.github)[
            #text(size: 11.5pt)[
                github.com/in/#contact_info.github
            ]
        ] \

        // Phone
        #text(size: 11.5pt)[
            #contact_info.phone
        ] \

        // Country
        #text(size: 11.5pt)[
            #contact_info.country
        ]
        #v(vert_margin)
    ]
}

// Header with name and contact info
#def_header()

#def_section("SUMMARY", [
    I am a Software Engineer, with a strong passion for GNU/Linux, Unix systems,
    and Systems Programming, and a deep interest in their evolution from inception to the present.
    I am seeking a role in *Linux/Unix Systems Engineering or Programming* 
    to contribute my skills while gaining hands-on experience in real-world projects.
])

#def_section("EXPERIENCE", [
    #def_experience("Platform Software Engineer",
        "Sonnen GmbH", 
        "December 2025 - Now", 
        [
        - Migrated multiple legacy cron jobs to *systemd* services and timers across sonnen's embedded Linux system, 
          that integrate properly into *dpkg* lifecycle hooks, which improves logging and troubleshooting and centralizes the system management from systemd.
        - Improved various *NetworkManager dispatcher scripts* to properly update and configure the system with *exponential backoff strategy*.
        - Implemented a *SoftAP* feature on sonnen’s embedded Linux, bringing up a virtual access point over WiFi by orchestrating interface setup, 
          dynamic config rendering for *hostapd* and *dnsmasq*, and iptables firewall rules — all managed through systemd units and a CLI tool.
    ])
])

#def_section("SKILLS & LANGUAGES", [
    #text(size: 11pt)[*Technical skills & Tools:*]
    #pad(left: list_padding)[
        - C, C++, Python, Java, OOP, and Data structures \
        - GNU/Linux, Bash, and docker \ 
        - Linux Network\ 
        - Git, GitHub, vim, and tmux \
    ]

    #text(size: 11pt)[*Languages:*]
    #pad(left: list_padding)[
        - Arabic: Native proficiency
        - English: Intermediate proficiency (B1)
    ]
])

#def_section("PROJECTS", [

    #def_project("c-toolkit",
        url: "https://github.com/minahermina/c-toolkit.git", 
        date: "July 2025 - September 2025", 
        [
        - Developed reusable C99-based utilities, including:
            - *Arena allocator*:  Developed thread-safe, region-based, and page-aligned memory allocator using *mmap*
            - *String*: Developed String utilities inspired by *Glib* from *Gnome Project*
    ])

    #def_project("BigNum",
        url: "https://github.com/minahermina/BigNum.git", 
        date: "April 2025 - June 2025", 
        [
        - Developed a C99 arbitrary-precision arithmetic library for cryptographic applications with 
          \ architecture-dependent 32/64-bit word representation using arena allocation for memory management.
        - Designed a robust API by exploring *OpenSSL* and *libtommath* libraries, and 
           implemented \ core big number algorithms such as Euclidean division and modular inverse.
    ])


    #def_project("imglib",
        url: "https://github.com/minahermina/imglib.git", 
        date: "November 2024 - January 2025", [
        - Developed a lightweight, portable C library for image manipulation on Unix-like systems.
        - Followed the *Suckless* C coding style and wrote a portable Makefile, avoiding GNU-specific extensions.
        - Implemented robust error handling system inspired by *ffmpeg* and stride-based indexing for efficient pixel access.
        ]
    )

    #def_project("Linux Kernel With lockdep", 
        url: "https://github.com/minahermina/Kernel-Config-with-lockdep-module", 
        date: "April 2024", 
        [
        - Configured and built the Linux kernel to enable lockdep module which helps in debugging 
          \ deadlocks in kernel space, then booteD into the custom kernel to verify lockdep functionality.
    ])

])

#pagebreak()

#def_section("CONTRIBUTIONS", [
    #pad(left: list_padding)[
        - *Unikraft*: 
            - Fixed broken documentation links in the main *README* and *sub-READMEs* in the examples directory for 
              #link("https://github.com/unikraft/catalog")[*unikraft/catalog*] repo 
              #link("https://github.com/unikraft/catalog/pull/231")[[#text(fill: blue, size: 12pt)[\#231]]]
              #link("https://github.com/unikraft/catalog/pull/232")[[#text(fill: blue, size: 12pt)[\#232]]]
            - Fixed a typo in in the *ukallocregion* library's *allocregion_posix_memalign* function
              #link("https://github.com/unikraft/unikraft/pull/1708/")[[#text(fill: blue, size: 12pt)[\#1708]]]
            - Working on updating *LLVM libraries* ports (*libcxx*, *libcxxabi*, *libunwind*, *libcompiler-rt*) from version *14.0.2* to *21.1.1* 
              in the unikraft ecosystem, involving low-level build system work with *Makefiles*, *C++*, and *C*    
          ]
])

#def_section("EDUCATION", [
    #table(
        columns: (1fr, auto),
        inset: 0pt,
        stroke: none,
        align: (left, right),
        [Faculty of Computers and Artificial Intelligence at Cairo University.],
        [*October 2021 - August 2025*]
    )
    #pad(left: list_padding)[
        - Bachelor's Degree in Information Technology
    ]

])

#def_section("CERTIFICATES", [
    #pad(left: list_padding)[
        - #link("https://www.credly.com/badges/348369ba-4e30-4bc8-9b64-f110aed55fce/")[CCNA]: Introduction to Networks #h(1fr) *July 2024 - August 2024*
        - #link("https://www.credly.com/badges/3420bc66-4053-4f97-accc-7f95e1b8979f/linked_in_profile")[CCNA]: Switching, Routing, and Wireless Essentials #h(1fr) *July 2024 - August 2024*
    ]
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
        - Contributed to the development of technical content for the committee sessions and 
          \ instructed real sessions for network committee members
    ]
])
