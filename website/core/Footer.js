/**
 * Copyright (c) 2017-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

const React = require("react");

class Footer extends React.Component {
  render() {
    return (
      <footer className="nav-footer demand-oter" id="footer">
        <div className="demand-oter-logo">
          <a href="https://demandcluster.com" target="_blank">
            <img
              src="https://backend.demandcluster.com/resources/demand-logo-circular.svg"
              alt="Demand Cluster"
              width="39"
              height="39"
            />
          </a>
        </div>
        <div className="sitemap">
          <div className="link-grid">
            <div className="link-grid-column">
              <h5>Company</h5>
              <ul className="footer-list">
                <li><a target="_blank" href="https://demandcluster.com/about">About</a></li>
                <li><a target="_blank" href="https://blog.demandcluster.com/">Blog</a></li>
                <li><a target="_blank" href="https://demandcluster.com/about#contact">Contact</a></li>
                <li><a target="_blank" href="https://demandcluster.com/careers">Careers</a></li>
                <li><a target="_blank" href="https://demandcluster.com/press">Press</a></li>
              </ul>
            </div>

            <div className="link-grid-column">
              <h5>Explore</h5>
              <ul className="footer-list">
                <li><a target="_blank" href="https://demandcluster.com/features">Features</a></li>
                <li><a target="_blank" href="https://docs.demandcluster.com/demand-cs/trunk/community-showcase">Showcase</a></li>
                <li><a target="_blank" href="https://demandcluster.com/roadmap">Roadmap</a></li>
                <li><a target="_blank" href="https://docs.demandcluster.com/">Docs</a></li>
                <li><a target="_blank" href="https://github.com/demandcluster/demand">GitHub</a></li>
              </ul>
            </div>

            <div className="link-grid-column">
              <h5>Engage</h5>
              <ul className="footer-list">
                <li><a target="_blank" href="https://demandcluster.com/become-a-partner">Partner</a></li>
                <li><a target="_blank" href="https://demandcluster.com/contributors">Contribute</a></li>
                <li><a target="_blank" href="http://marketing.demandcluster.com/acton/media/37362/get-in-touch">Get in Touch</a></li>
              </ul>
            </div>

            <div className="newsletter">
              <ul className="social-list">
                <li><a target="_blank" href="https://twitter.com/demandcluster"><i className="fa fa-twitter" /></a></li>
                <li><a target="_blank" href="https://facebook.com/demandcluster"><i className="fa fa-facebook" /></a></li>
                <li><a target="_blank" href="https://instagram.com/demandcluster"><i className="fa fa-instagram" /></a></li>
                <li><a target="_blank" href="https://github.com/demandcluster/demand"><i className="fa fa-github" /></a></li>
              </ul>
            </div>


          </div>
        </div>
      </footer>
    );
  }
}

module.exports = Footer;
