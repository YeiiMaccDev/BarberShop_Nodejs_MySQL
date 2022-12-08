import { format } from "timeago.js";
import dayjs from 'dayjs';

export const timeago = (savedTimestamp) => format(savedTimestamp);


export const dayFormat = (date) => dayjs(date).format('YYYY-MM-DD');

