import React from 'react'
import './portfolio.css'
 import IMG1 from '../../assets/oil life.gif'
import IMG2 from '../../assets/ciri.png'
import IMG3 from '../../assets/portfolio3.gif'
import IMG4 from '../../assets/ciri.png'
import IMG5 from '../../assets/ciri.png'
import IMG6 from '../../assets/ciri.png'



const data = [
  {
    id: 1,
    image: IMG1,
    title: 'The Essential Life App Update',
    github: 'https://github.com',
    demo: 'https://dribbble.com/shots/16673715-Crypto-currency-dashboards-and-financial-data-visualization'
  },
  {
    id: 2,
    image: IMG2,
    title: 'Ciri and Friends Ruby CRUD App',
    github: 'https://github.com/trastephenson/Ciri-and-Friends-Ruby-on-Rails-App',
    demo: 'http://ciriandfriendsapp.herokuapp.com/'
  },
  {
    id: 3,
    image: IMG3,
    title: 'Identicon Maker in Elixir',
    github: 'https://github.com/trastephenson/identicon',
    demo: 'https://www.youtube.com/watch?v=8ybW48rKBME'
  },
  {
    id: 4,
    image: IMG4,
    title: 'Maintaining tasks and tracking progress',
    github: 'https://github.com',
    demo: 'https://dribbble.com/shots/16955822-Maintaining-tasks-and-tracking-progress'
  },
  {
    id: 5,
    image: IMG5,
    title: 'Charts templates & infographics in Figma',
    github: 'https://github.com',
    demo: 'https://dribbble.com/shots/16541289-Orion-UI-kit-Charts-templates-infographics-in-Figma'
  },
  {
    id: 6,
    image: IMG6,
    title: 'Charts templates & infographics in Figma',
    github: 'https://github.com',
    demo: 'https://dribbble.com/shots/15887665-Orion-UI-kit-Charts-templates-infographics-in-Figma'
  }
]


const Portfolio = () => {
  return (
    <section id='portfolio'>
      <h5>My Recent Work</h5>
      <h2>Portfolio</h2>

      <div className="container portfolio__container">
        {
          data.map(({id, image, title, github, demo}) => {
            return (
              <article key={id} className='portfolio__item'>
              <div className="portfolio__item-image">
                <img src={image} alt={title} />
              </div>
              <h3>{title}</h3>
              <div className="portfolio__item-cta">
              <a href={github} className='btn' target='_blank' rel='noreferrer'>Github</a>
              <a href={demo} className='btn btn-primary' target='_blank' rel='noreferrer'>Try It Out</a>

              </div>
            </article>
            )
          })
        }
      </div>
    </section>
  )
}

export default Portfolio
