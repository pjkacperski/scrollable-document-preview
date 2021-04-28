\document
[
  Info
  {
    Title = "Migradoc Example Document"
    Author = "Three Brave Meerkats Piotr Jakub Kacperski"
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
        Page \field(Page)[] of \field(NumPages)[]
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
        Page \field(Page)[] of \field(NumPages)[]
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
      DOCUMENT TITLE
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
              Example Section Title
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
               Example Section Title
            }
          }
        }
        \row
        {
          \cell
          {
            Item 1: Value 1\linebreak
            Item 2: Value 2\linebreak
            Item 3: Value 3\linebreak
            Item 4: Value 4\linebreak
            Item 5: Value 5\linebreak
            Item 6: Value 6\linebreak
            Item 7: Value 7
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
              Example Section Title
            }
          }
        }
        \row
        {
          \cell
          {
            Line of text\linebreak
            Line of text\linebreak
            Line of text\linebreak
            Line of text\linebreak
            Line of text
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
              Item
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
      Subtitle\linebreak
      \font("Normal"){Text Text}
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
      \font("Header2"){Table Title}
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
            Cell Text
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
            Cell Text
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
            Cell Text
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
            Cell Text
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
            Cell Text
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
                Rotated
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
            Cell Text
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
            Cell Text
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
                Rotated
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
            Cell Text
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
            Centered Cell Text
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
            Cell Text
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
            Centered Cell Text
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
      \font("Header2"){Table Title}
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
            Cell Text
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
            Cell Text
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
            Cell Text
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
            Cell Text
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
            Cell Text
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
            Cell Text
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
      \font("Header2"){Table Title}
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
            Cell Text
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
            Cell Text
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
            Cell Text
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
            15
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
            Cell Text
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
            17
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
      \font("Header2"){Subtitle}\linebreak
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
              Item
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
      Subtitle\linebreak
      \font("Normal"){Text Text}
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
      \font("Header2"){Table Title}
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
            Cell Text
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
            Cell Text
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
            Cell Text
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
            Cell Text
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
            Cell Text
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
                Rotated
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
            Cell Text
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
            Cell Text
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
                Rotated
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
            Cell Text
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
            Centered Cell Text
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
            Cell Text
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
            Centered Cell Text
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
      \font("Header2"){Subtitle}\linebreak
      Lorem ipsum dolor sit amet, consectetur adipiscing elit.
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
              Item
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
      Subtitle\linebreak
      \font("Normal"){Text Text}
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
      \font("Header2"){Table Title}
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
            Cell Text
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
            Cell Text
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
            Cell Text
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
            Cell Text
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
            Cell Text
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
                Rotated
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
            Cell Text
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
            Cell Text
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
                Rotated
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
            Cell Text
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
            Centered Cell Text
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
            Cell Text
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
            Centered Cell Text
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
      \font("Header2"){Subtitle}\linebreak
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam rutrum odio eu condimentum fringilla. Curabitur erat augue, viverra eu orci vel, congue blandit neque. Integer euismod volutpat varius. Suspendisse eu turpis erat. Sed bibendum nunc sed velit aliquam rutrum. Donec eget lacinia mauris, id tempor mauris. Sed et nisl eget lorem finibus feugiat.
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
              Item
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
      Subtitle\linebreak
      \font("Normal"){Text Text}
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
      \font("Header2"){Table Title}
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
            Cell Text
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
            Cell Text
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
            Cell Text
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
            Cell Text
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
            Cell Text
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
                Rotated
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
            Cell Text
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
            Cell Text
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
                Rotated
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
            Cell Text
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
            Centered Cell Text
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
            Cell Text
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
            Centered Cell Text
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
      \font("Header2"){Table Title}
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
            Cell Text
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
            Cell Text
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
            Cell Text
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
            18
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
            Cell Text
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
            18
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
      \font("Header2"){Subtitle}\linebreak
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam rutrum odio eu condimentum fringilla.
    }
  }
}
