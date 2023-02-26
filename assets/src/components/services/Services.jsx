import React from 'react'
import './services.css'
import {FaToolbox} from 'react-icons/fa'

const Services = () => {
  return (
    <section id='services'>
      <h5>What I Offer</h5>
      <h2>Services</h2>

      <div className="container services__container">
        <article className="service">
          <div className="service__head">
            <h3>UI/UX Design</h3>
          </div>

          <ul className='service__list'>
            
            <li>
              <FaToolbox className='service__list-icon' />
              <p>UI Design</p>
            </li>
          
            <li>
              <FaToolbox className='service__list-icon' />
              <p>Wireframing and Prototyping</p>
            </li>
           
            <li>
              <FaToolbox className='service__list-icon' />
              <p>Accessibility design</p>
            </li>
            <li>
              <FaToolbox className='service__list-icon' />
              <p>Usability Testing</p>
            </li>

          </ul>
        </article>
       
        <article className="service">
          <div className="service__head">
            <h3>Software Development</h3>
          </div>

          <ul className='service__list'>
            <li>
              <FaToolbox className='service__list-icon' />
              <p>Full-stack Web Development</p>
            </li>
            <li>
              <FaToolbox className='service__list-icon' />
              <p>Mobile App Development</p>
            </li>
            <li>
              <FaToolbox className='service__list-icon' />
              <p>Cloud Computing Solutions</p>
            </li>
            <li>
              <FaToolbox className='service__list-icon' />
              <p>Custom Software Development</p>
            </li>
       
          </ul>
        </article>
       
        <article className="service">
          <div className="service__head">
            <h3>Project Management</h3>
          </div>

          <ul className='service__list'>
            <li>
              <FaToolbox className='service__list-icon' />
              <p>Project Planning and Scoping</p>
            </li>
            <li>
              <FaToolbox className='service__list-icon' />
              <p>Agile Project Management</p>
            </li>
            <li>
              <FaToolbox className='service__list-icon' />
              <p>Risk Management</p>
            </li>
          
            <li>
              <FaToolbox className='service__list-icon' />
              <p>Stakeholder Communication</p>
            </li>
        
          </ul>
        </article>
        <article className="service">
          <div className="service__head">
            <h3>Product Management</h3>
          </div>

          <ul className='service__list'>
            
            <li>
              <FaToolbox className='service__list-icon' />
              <p>Product Strategy and Roadmapping</p>
            </li>
          
            <li>
              <FaToolbox className='service__list-icon' />
              <p>Market and Customer Research</p>
            </li>
           
            <li>
              <FaToolbox className='service__list-icon' />
              <p>Product Design and Development</p>
            </li>
            <li>
              <FaToolbox className='service__list-icon' />
              <p>Product Analytics and Optimization</p>
            </li>

          </ul>
        </article>
      </div>
    </section>
  )
}

export default Services