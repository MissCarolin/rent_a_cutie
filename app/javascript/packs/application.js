

import "bootstrap";
import "plugins/flatpickr";
import "../booking.js";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { toggleDateInputs }  from "../plugins/flatpickr";
import { initMapbox } from '../plugins/init_mapbox';


toggleDateInputs();
initMapbox();
