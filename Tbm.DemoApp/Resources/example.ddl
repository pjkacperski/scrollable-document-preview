\document
[
  Info
  {
    Title = "Przykładowy Dokument Migradoc"
    Author = "DemoApp"
  }
]
{
  \styles
  {
    Normal
    {
      Font
      {
        Name = "Calibri"
      }
    }

    Heading1
    {
      ParagraphFormat
      {
        OutlineLevel = Level1
      }
    }

    Heading2
    {
      ParagraphFormat
      {
        OutlineLevel = Level2
      }
    }

    Heading3
    {
      ParagraphFormat
      {
        OutlineLevel = Level3
      }
    }

    Heading4
    {
      ParagraphFormat
      {
        OutlineLevel = Level4
      }
    }

    Heading5
    {
      ParagraphFormat
      {
        OutlineLevel = Level5
      }
    }

    Heading6
    {
      ParagraphFormat
      {
        OutlineLevel = Level6
      }
    }

    Heading7
    {
      ParagraphFormat
      {
        OutlineLevel = Level7
      }
    }

    Heading8
    {
      ParagraphFormat
      {
        OutlineLevel = Level8
      }
    }

    Heading9
    {
      ParagraphFormat
      {
        OutlineLevel = Level9
      }
    }

    InvalidStyleName
    {
      Font
      {
        Bold = true
        Underline = Dash
        Color = Lime
      }
    }

    Title : Normal
    {
      Font
      {
        Size = 20
      }
      ParagraphFormat
      {
        SpaceBefore = "0.5cm"
        SpaceAfter = "3.5cm"
      }
    }

    Header1 : Normal
    {
      Font
      {
        Size = 14
      }
    }

    Header2 : Normal
    {
      Font
      {
        Size = 12
      }
    }
  }
  \section
  [
    PageSetup
    {
      PageHeight = "29.7cm"
      PageWidth = "21cm"
      Orientation = Portrait
      LeftMargin = "2.5cm"
      RightMargin = "2.5cm"
      TopMargin = "2.5cm"
      BottomMargin = "2cm"
      FooterDistance = "1.25cm"
      HeaderDistance = "1.25cm"
      OddAndEvenPagesHeaderFooter = false
      DifferentFirstPageHeaderFooter = false
      SectionStart = BreakNextPage
      PageFormat = A4
      MirrorMargins = false
      HorizontalPageBreak = false
    }
  ]
  {
    \primaryfooter
    {
      \paragraph
      [
        Format
        {
          Alignment = Center
        }
      ]
      {
        Strona \field(Page)[] z \field(NumPages)[]
      }
    }
    \evenpagefooter
    {
      \paragraph
      [
        Format
        {
          Alignment = Center
        }
      ]
      {
        Strona \field(Page)[] z \field(NumPages)[]
      }
    }
    \paragraph
    [
      Style = "Title"
      Format
      {
        Alignment = Center
      }
    ]
    {
      HISTORIA CHOROBY
    }
    \table
    [
      Format
      {
        Borders
        {
          Width = 0
        }
      }
    ]
    {
      \columns
      [
        Width = 226.7716
      ]
      {
        \column
        [
          Format
          {
            Alignment = Left
          }
        ]
        \column
        [
          Format
          {
            Alignment = Right
          }
        ]
      }
      \rows
      [
        LeftIndent = 0
      ]
      {
        \row
        {
          \cell
          {
            \paragraph
            [
              Style = "Header1"
            ]
            {
              Dane pacjenta
            }
          }
          \cell
          {
            \paragraph
            [
              Style = "Header1"
              Format
              {
                Alignment = Right
              }
            ]
            {
              Data wydruku
            }
          }
        }
        \row
        {
          \cell
          {
            Imię i nazwisko: IGOR ABACKI\linebreak
            Pesel: 67021100000\linebreak
            Płeć: Mężczyzna\linebreak
            Data urodzenia: 11.02.1967\linebreak
            Adres zamieszkania:\linebreak
            TARGOWA\linebreak
            02-220 WARSZAWA
          }
          \cell
          {
            28.04.2021 15:46
          }
        }
        \row
        [
          TopPadding = "1cm"
        ]
        {
          \cell
          {
            \paragraph
            [
              Style = "Header1"
            ]
            {
              Sporządzający
            }
          }
        }
        \row
        {
          \cell
          {
            Fajny Zakład Optyczny\linebreak
            ul. Parkowa 22\linebreak
            02-220 Warszawa\linebreak
            NIP: 7010713600\linebreak
            Tel.: 500-000-000
          }
        }
      }
    }
    \pagebreak
    \table
    {
      \columns
      [
        Width = 226.7716
      ]
      {
        \column
        [
          Format
          {
            Alignment = Left
          }
        ]
        \column
        [
          Format
          {
            Alignment = Right
          }
        ]
      }
      \rows
      [
        LeftIndent = 0
      ]
      {
        \row
        [
          Borders
          {
            Bottom
            {
              Width = 0.5
              Color = RGB(0,122,204)
            }
          }
        ]
        {
          \cell
          {
            \paragraph
            [
              Style = "Header1"
            ]
            {
              Wizyta
            }
          }
          \cell
          {
            \paragraph
            [
              Style = "Header1"
              Format
              {
                Alignment = Right
              }
            ]
            {
              12.12.2016
            }
          }
        }
      }
    }
    \paragraph
    [
      Style = "Header2"
      Format
      {
        SpaceBefore = "0.5cm"
      }
    ]
    {
      Badający\linebreak
      \font("Normal"){Jan Kowalski}
    }
    \paragraph
    [
      Format
      {
        Font
        {
          Color = Black
        }
        SpaceBefore = "0.5cm"
      }
    ]
    {
      \font("Header2"){Recepta okularowa}
    }
    \table
    [
      TopPadding = "0.05cm"
      LeftPadding = "0.08cm"
      RightPadding = "0.08cm"
      BottomPadding = "0.05cm"
    ]
    {
      \columns
      {
        \column
        [
          Width = "0.7cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
      }
      \rows
      [
        LeftIndent = "-0.69cm"
      ]
      {
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Oko
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Sfera
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Cylinder
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Oś
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Odległość źrenic
          }
        }
        \row
        [
          Height = "0.3cm"
          HeightRule = Exactly
          Borders
          {
            Width = 0
          }
        ]
        {
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          [
            MergeDown = 1
          ]
          {
            \textframe
            [
              Orientation = Upward
            ]
            {
              \paragraph
              [
                Format
                {
                  Font
                  {
                    Color = Black
                  }
                  Alignment = Center
                }
              ]
              {
                Dal
              }
            }
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Prawe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            +0,25
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            -1,25
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            120°
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            12 mm
          }
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Lewe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            +1,00
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            -0,50
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            150°
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            12 mm
          }
        }
        \row
        [
          Height = "0.3cm"
          HeightRule = Exactly
          Borders
          {
            Width = 0
          }
        ]
        {
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          [
            MergeDown = 1
          ]
          {
            \textframe
            [
              Orientation = Upward
            ]
            {
              \paragraph
              [
                Format
                {
                  Font
                  {
                    Color = Black
                  }
                  Alignment = Center
                }
              ]
              {
                Bliż
              }
            }
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Prawe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Center
            }
            MergeRight = 3
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            Addycja: +0,00
          }
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Lewe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Center
            }
            MergeRight = 3
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            Addycja: +0,00
          }
        }
      }
    }
    \paragraph
    [
      Format
      {
        Font
        {
          Color = Black
        }
        SpaceBefore = "0.5cm"
      }
    ]
    {
      \font("Header2"){Visus}
    }
    \table
    [
      TopPadding = "0.05cm"
      LeftPadding = "0.08cm"
      RightPadding = "0.08cm"
      BottomPadding = "0.05cm"
    ]
    {
      \columns
      {
        \column
        [
          Width = "2.8cm"
        ]
        \column
        [
          Width = "3.73cm"
        ]
        \column
        [
          Width = "3.73cm"
        ]
        \column
        [
          Width = "3.73cm"
        ]
      }
      \rows
      [
        LeftIndent = "0.01cm"
      ]
      {
        \row
        {
          \cell
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Oko prawe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Oko lewe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Uwagi
          }
        }
        \row
        [
          Height = "0.3cm"
          HeightRule = Exactly
          Borders
          {
            Width = 0
          }
        ]
        {
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = AtLeast
          VerticalAlignment = Center
        ]
        {
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Bez korekcji
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            0,8
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            0,8
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = AtLeast
          VerticalAlignment = Center
        ]
        {
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Z korekcją
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            1,0
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            1,0
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = AtLeast
          VerticalAlignment = Center
        ]
        {
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Obuocznie
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Center
            }
            MergeRight = 1
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            1,0
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
        }
      }
    }
    \paragraph
    [
      Format
      {
        Font
        {
          Color = Black
        }
        SpaceBefore = "0.5cm"
      }
    ]
    {
      \font("Header2"){Tonus}
    }
    \table
    [
      TopPadding = "0.05cm"
      LeftPadding = "0.08cm"
      RightPadding = "0.08cm"
      BottomPadding = "0.05cm"
    ]
    {
      \columns
      {
        \column
        [
          Width = "2.8cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
      }
      \rows
      [
        LeftIndent = "0.01cm"
      ]
      {
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Oko
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Ciśnienie
          }
        }
        \row
        [
          Height = "0.3cm"
          HeightRule = Exactly
          Borders
          {
            Width = 0
          }
        ]
        {
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = AtLeast
          VerticalAlignment = Center
        ]
        {
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Prawe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            15 mmHg
          }
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = AtLeast
          VerticalAlignment = Center
        ]
        {
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Lewe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            17 mmHg
          }
        }
      }
    }
    \paragraph
    [
      Style = "Normal"
      Format
      {
        Font
        {
          Color = Black
        }
        SpaceBefore = "0.5cm"
      }
    ]
    {
      \font("Header2"){Wywiad}\linebreak
    }
    \pagebreak
    \table
    {
      \columns
      [
        Width = 226.7716
      ]
      {
        \column
        [
          Format
          {
            Alignment = Left
          }
        ]
        \column
        [
          Format
          {
            Alignment = Right
          }
        ]
      }
      \rows
      [
        LeftIndent = 0
      ]
      {
        \row
        [
          Borders
          {
            Bottom
            {
              Width = 0.5
              Color = RGB(0,122,204)
            }
          }
        ]
        {
          \cell
          {
            \paragraph
            [
              Style = "Header1"
            ]
            {
              Wizyta
            }
          }
          \cell
          {
            \paragraph
            [
              Style = "Header1"
              Format
              {
                Alignment = Right
              }
            ]
            {
              18.05.2017
            }
          }
        }
      }
    }
    \paragraph
    [
      Style = "Header2"
      Format
      {
        SpaceBefore = "0.5cm"
      }
    ]
    {
      Badający\linebreak
      \font("Normal"){Jan Kowalski}
    }
    \paragraph
    [
      Format
      {
        Font
        {
          Color = Black
        }
        SpaceBefore = "0.5cm"
      }
    ]
    {
      \font("Header2"){Recepta okularowa}
    }
    \table
    [
      TopPadding = "0.05cm"
      LeftPadding = "0.08cm"
      RightPadding = "0.08cm"
      BottomPadding = "0.05cm"
    ]
    {
      \columns
      {
        \column
        [
          Width = "0.7cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
      }
      \rows
      [
        LeftIndent = "-0.69cm"
      ]
      {
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Oko
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Sfera
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Cylinder
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Oś
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Odległość źrenic
          }
        }
        \row
        [
          Height = "0.3cm"
          HeightRule = Exactly
          Borders
          {
            Width = 0
          }
        ]
        {
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          [
            MergeDown = 1
          ]
          {
            \textframe
            [
              Orientation = Upward
            ]
            {
              \paragraph
              [
                Format
                {
                  Font
                  {
                    Color = Black
                  }
                  Alignment = Center
                }
              ]
              {
                Dal
              }
            }
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Prawe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            +0,25
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            -1,25
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            120°
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            12 mm
          }
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Lewe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            +1,00
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            -0,50
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            150°
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            12 mm
          }
        }
        \row
        [
          Height = "0.3cm"
          HeightRule = Exactly
          Borders
          {
            Width = 0
          }
        ]
        {
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          [
            MergeDown = 1
          ]
          {
            \textframe
            [
              Orientation = Upward
            ]
            {
              \paragraph
              [
                Format
                {
                  Font
                  {
                    Color = Black
                  }
                  Alignment = Center
                }
              ]
              {
                Bliż
              }
            }
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Prawe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Center
            }
            MergeRight = 3
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            Addycja: +0,00
          }
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Lewe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Center
            }
            MergeRight = 3
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            Addycja: +0,00
          }
        }
      }
    }
    \paragraph
    [
      Style = "Normal"
      Format
      {
        Font
        {
          Color = Black
        }
        SpaceBefore = "0.5cm"
      }
    ]
    {
      \font("Header2"){Wywiad}\linebreak
      Bez zmian.
    }
    \pagebreak
    \table
    {
      \columns
      [
        Width = 226.7716
      ]
      {
        \column
        [
          Format
          {
            Alignment = Left
          }
        ]
        \column
        [
          Format
          {
            Alignment = Right
          }
        ]
      }
      \rows
      [
        LeftIndent = 0
      ]
      {
        \row
        [
          Borders
          {
            Bottom
            {
              Width = 0.5
              Color = RGB(0,122,204)
            }
          }
        ]
        {
          \cell
          {
            \paragraph
            [
              Style = "Header1"
            ]
            {
              Wizyta
            }
          }
          \cell
          {
            \paragraph
            [
              Style = "Header1"
              Format
              {
                Alignment = Right
              }
            ]
            {
              06.02.2018
            }
          }
        }
      }
    }
    \paragraph
    [
      Style = "Header2"
      Format
      {
        SpaceBefore = "0.5cm"
      }
    ]
    {
      Badający\linebreak
      \font("Normal"){Jan Kowalski}
    }
    \paragraph
    [
      Format
      {
        Font
        {
          Color = Black
        }
        SpaceBefore = "0.5cm"
      }
    ]
    {
      \font("Header2"){Recepta okularowa}
    }
    \table
    [
      TopPadding = "0.05cm"
      LeftPadding = "0.08cm"
      RightPadding = "0.08cm"
      BottomPadding = "0.05cm"
    ]
    {
      \columns
      {
        \column
        [
          Width = "0.7cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
      }
      \rows
      [
        LeftIndent = "-0.69cm"
      ]
      {
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Oko
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Sfera
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Cylinder
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Oś
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Odległość źrenic
          }
        }
        \row
        [
          Height = "0.3cm"
          HeightRule = Exactly
          Borders
          {
            Width = 0
          }
        ]
        {
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          [
            MergeDown = 1
          ]
          {
            \textframe
            [
              Orientation = Upward
            ]
            {
              \paragraph
              [
                Format
                {
                  Font
                  {
                    Color = Black
                  }
                  Alignment = Center
                }
              ]
              {
                Dal
              }
            }
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Prawe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            +0,75
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            -1,25
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            120°
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            12 mm
          }
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Lewe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            +1,00
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            -0,50
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            150°
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            12 mm
          }
        }
        \row
        [
          Height = "0.3cm"
          HeightRule = Exactly
          Borders
          {
            Width = 0
          }
        ]
        {
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          [
            MergeDown = 1
          ]
          {
            \textframe
            [
              Orientation = Upward
            ]
            {
              \paragraph
              [
                Format
                {
                  Font
                  {
                    Color = Black
                  }
                  Alignment = Center
                }
              ]
              {
                Bliż
              }
            }
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Prawe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Center
            }
            MergeRight = 3
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            Addycja: +0,00
          }
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Lewe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Center
            }
            MergeRight = 3
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            Addycja: +0,00
          }
        }
      }
    }
    \paragraph
    [
      Style = "Normal"
      Format
      {
        Font
        {
          Color = Black
        }
        SpaceBefore = "0.5cm"
      }
    ]
    {
      \font("Header2"){Wywiad}\linebreak
      Lekka zmiana wady w oku prawym.
    }
    \pagebreak
    \table
    {
      \columns
      [
        Width = 226.7716
      ]
      {
        \column
        [
          Format
          {
            Alignment = Left
          }
        ]
        \column
        [
          Format
          {
            Alignment = Right
          }
        ]
      }
      \rows
      [
        LeftIndent = 0
      ]
      {
        \row
        [
          Borders
          {
            Bottom
            {
              Width = 0.5
              Color = RGB(0,122,204)
            }
          }
        ]
        {
          \cell
          {
            \paragraph
            [
              Style = "Header1"
            ]
            {
              Wizyta
            }
          }
          \cell
          {
            \paragraph
            [
              Style = "Header1"
              Format
              {
                Alignment = Right
              }
            ]
            {
              28.03.2021
            }
          }
        }
      }
    }
    \paragraph
    [
      Style = "Header2"
      Format
      {
        SpaceBefore = "0.5cm"
      }
    ]
    {
      Badający\linebreak
      \font("Normal"){Jan Kowalski}
    }
    \paragraph
    [
      Format
      {
        Font
        {
          Color = Black
        }
        SpaceBefore = "0.5cm"
      }
    ]
    {
      \font("Header2"){Recepta okularowa}
    }
    \table
    [
      TopPadding = "0.05cm"
      LeftPadding = "0.08cm"
      RightPadding = "0.08cm"
      BottomPadding = "0.05cm"
    ]
    {
      \columns
      {
        \column
        [
          Width = "0.7cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
      }
      \rows
      [
        LeftIndent = "-0.69cm"
      ]
      {
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Oko
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Sfera
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Cylinder
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Oś
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Odległość źrenic
          }
        }
        \row
        [
          Height = "0.3cm"
          HeightRule = Exactly
          Borders
          {
            Width = 0
          }
        ]
        {
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          [
            MergeDown = 1
          ]
          {
            \textframe
            [
              Orientation = Upward
            ]
            {
              \paragraph
              [
                Format
                {
                  Font
                  {
                    Color = Black
                  }
                  Alignment = Center
                }
              ]
              {
                Dal
              }
            }
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Prawe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            +0,75
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            -1,25
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            120°
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            12 mm
          }
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Lewe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            +1,00
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            -0,50
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            150°
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            12 mm
          }
        }
        \row
        [
          Height = "0.3cm"
          HeightRule = Exactly
          Borders
          {
            Width = 0
          }
        ]
        {
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          [
            MergeDown = 1
          ]
          {
            \textframe
            [
              Orientation = Upward
            ]
            {
              \paragraph
              [
                Format
                {
                  Font
                  {
                    Color = Black
                  }
                  Alignment = Center
                }
              ]
              {
                Bliż
              }
            }
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Prawe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Center
            }
            MergeRight = 3
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            Addycja: +0,00
          }
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Lewe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Center
            }
            MergeRight = 3
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            Addycja: +0,00
          }
        }
      }
    }
    \paragraph
    [
      Format
      {
        Font
        {
          Color = Black
        }
        SpaceBefore = "0.5cm"
      }
    ]
    {
      \font("Header2"){Tonus}
    }
    \table
    [
      TopPadding = "0.05cm"
      LeftPadding = "0.08cm"
      RightPadding = "0.08cm"
      BottomPadding = "0.05cm"
    ]
    {
      \columns
      {
        \column
        [
          Width = "2.8cm"
        ]
        \column
        [
          Width = "2.8cm"
        ]
      }
      \rows
      [
        LeftIndent = "0.01cm"
      ]
      {
        \row
        [
          Height = "0.55cm"
          HeightRule = Exactly
          VerticalAlignment = Center
        ]
        {
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Oko
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Ciśnienie
          }
        }
        \row
        [
          Height = "0.3cm"
          HeightRule = Exactly
          Borders
          {
            Width = 0
          }
        ]
        {
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = AtLeast
          VerticalAlignment = Center
        ]
        {
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Prawe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            18 mmHg
          }
        }
        \row
        [
          Height = "0.55cm"
          HeightRule = AtLeast
          VerticalAlignment = Center
        ]
        {
          \cell
          [
            Format
            {
              Font
              {
                Color = White
              }
              Alignment = Center
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
            Shading
            {
              Color = RGB(0,122,204)
            }
          ]
          {
            Lewe
          }
          \cell
          [
            Format
            {
              Font
              {
                Color = Black
              }
              Alignment = Right
            }
            Borders
            {
              Width = 0.5
              Color = Black
            }
          ]
          {
            18 mmHg
          }
        }
      }
    }
    \paragraph
    [
      Style = "Normal"
      Format
      {
        Font
        {
          Color = Black
        }
        SpaceBefore = "0.5cm"
      }
    ]
    {
      \font("Header2"){Wywiad}\linebreak
      Wada bez zmian.
    }
  }
}
