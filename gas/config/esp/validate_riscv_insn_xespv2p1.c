           case 'e':
             switch (*++oparg)
               {
               case 'd':
                 switch (*++oparg)
                   {
                   case 'i':
                     switch (*++oparg)
                       {
                       case '2': used_bits |= ENCODE_ESP_IMM2 (-1U); break;    /* Xedi2 */
                       case '5':
                         switch (*++oparg)
                           {
                           case '0': used_bits |= ENCODE_ESP_IMM5_0 (-1U); break;      /* Xedi50 */
                           case '1': used_bits |= ENCODE_ESP_IMM5_1 (-1U); break;      /* Xedi51 */
                           default:    /* Xedi5[.] */
                             goto unknown_validate_operand;
                           }
                         break;
                       default:        /* Xedi[.] */
                         goto unknown_validate_operand;
                       }
                     break;
                   case 's':
                     switch (*++oparg)
                       {
                       case '0': used_bits |= ENCODE_ESP_SHAMT_0 (-1U); break; /* Xeds0 */
                       case '1': used_bits |= ENCODE_ESP_SHAMT_1 (-1U); break; /* Xeds1 */
                       default:        /* Xeds[.] */
                         goto unknown_validate_operand;
                       }
                     break;
                   default:    /* Xed[.] */
                     goto unknown_validate_operand;
                   }
                 break;
               case 'l':
                 switch (*++oparg)
                   {
                   case 'c': used_bits |= ENCODE_ESP_LP_COUNT (-1U); break;    /* Xelc */
                   case 'i': used_bits |= ENCODE_ESP_LP_ID (-1U); break;       /* Xeli */
                   case 'o':
                     switch (*++oparg)
                       {
                       case '1':
                         switch (*++oparg)
                           {
                           case '2': used_bits |= ENCODE_ESP_LP_OFFSET_12 (-1U); break;        /* Xelo12 */
                           default:    /* Xelo1[.] */
                             goto unknown_validate_operand;
                           }
                         break;
                       case '9': used_bits |= ENCODE_ESP_LP_OFFSET_9 (-1U); break;     /* Xelo9 */
                       default:        /* Xelo[.] */
                         goto unknown_validate_operand;
                       }
                     break;
                   default:    /* Xel[.] */
                     goto unknown_validate_operand;
                   }
                 break;
               case 'o':
                 switch (*++oparg)
                   {
                   case '4':
                     switch (*++oparg)
                       {
                       case '4':
                         switch (*++oparg)
                           {
                           case '0': used_bits |= ENCODE_ESP_OFFSET_16_16_0 (-1U); break;      /* Xeo440 */
                           case '1': used_bits |= ENCODE_ESP_OFFSET_16_16_1 (-1U); break;      /* Xeo441 */
                           case '2': used_bits |= ENCODE_ESP_OFFSET_16_16_2 (-1U); break;      /* Xeo442 */
                           default:    /* Xeo44[.] */
                             goto unknown_validate_operand;
                           }
                         break;
                       default:        /* Xeo4[.] */
                         goto unknown_validate_operand;
                       }
                     break;
                   case '8':
                     switch (*++oparg)
                       {
                       case '4':
                         switch (*++oparg)
                           {
                           case '0': used_bits |= ENCODE_ESP_OFFSET_256_16_0 (-1U); break;     /* Xeo840 */
                           case '1': used_bits |= ENCODE_ESP_OFFSET_256_16_1 (-1U); break;     /* Xeo841 */
                           case '2': used_bits |= ENCODE_ESP_OFFSET_256_16_2 (-1U); break;     /* Xeo842 */
                           case '3': used_bits |= ENCODE_ESP_OFFSET_256_16_3 (-1U); break;     /* Xeo843 */
                           default:    /* Xeo84[.] */
                             goto unknown_validate_operand;
                           }
                         break;
                       case '0':
                         switch (*++oparg)
                           {
                           case '0': used_bits |= ENCODE_ESP_OFFSET_256_1_0 (-1U); break;      /* Xeo800 */
                           default:    /* Xeo80[.] */
                             goto unknown_validate_operand;
                           }
                         break;
                       case '1':
                         switch (*++oparg)
                           {
                           case '0': used_bits |= ENCODE_ESP_OFFSET_256_2_0 (-1U); break;      /* Xeo810 */
                           default:    /* Xeo81[.] */
                             goto unknown_validate_operand;
                           }
                         break;
                       case '2':
                         switch (*++oparg)
                           {
                           case '0': used_bits |= ENCODE_ESP_OFFSET_256_4_0 (-1U); break;      /* Xeo820 */
                           default:    /* Xeo82[.] */
                             goto unknown_validate_operand;
                           }
                         break;
                       case '3':
                         switch (*++oparg)
                           {
                           case '0': used_bits |= ENCODE_ESP_OFFSET_256_8_0 (-1U); break;      /* Xeo830 */
                           case '1': used_bits |= ENCODE_ESP_OFFSET_256_8_1 (-1U); break;      /* Xeo831 */
                           case '2': used_bits |= ENCODE_ESP_OFFSET_256_8_2 (-1U); break;      /* Xeo832 */
                           default:    /* Xeo83[.] */
                             goto unknown_validate_operand;
                           }
                         break;
                       default:        /* Xeo8[.] */
                         goto unknown_validate_operand;
                       }
                     break;
                   default:    /* Xeo[.] */
                     goto unknown_validate_operand;
                   }
                 break;
               case 'q':
                 switch (*++oparg)
                   {
                   case 'u': used_bits |= ENCODE_ESP_QU (-1U); break;  /* Xequ */
                   case 'v': used_bits |= ENCODE_ESP_QV (-1U); break;  /* Xeqv */
                   case 'w': used_bits |= ENCODE_ESP_QW (-1U); break;  /* Xeqw */
                   case 'x': used_bits |= ENCODE_ESP_QX (-1U); break;  /* Xeqx */
                   case 'y': used_bits |= ENCODE_ESP_QY (-1U); break;  /* Xeqy */
                   case 'z': used_bits |= ENCODE_ESP_QZ (-1U); break;  /* Xeqz */
                   default:    /* Xeq[.] */
                     goto unknown_validate_operand;
                   }
                 break;
               case 'r':
                 switch (*++oparg)
                   {
                   case 'c': used_bits |= ENCODE_ESP_RD (-1U); break;  /* Xerc */
                   case 'a':
                     switch (*++oparg)
                       {
                       case '0': used_bits |= ENCODE_ESP_RS1_0 (-1U); break;   /* Xera0 */
                       case '1': used_bits |= ENCODE_ESP_RS1_1 (-1U); break;   /* Xera1 */
                       default:        /* Xera[.] */
                         goto unknown_validate_operand;
                       }
                     break;
                   case 'b':
                     switch (*++oparg)
                       {
                       case '0': used_bits |= ENCODE_ESP_RS2_0 (-1U); break;   /* Xerb0 */
                       case '1': used_bits |= ENCODE_ESP_RS2_1 (-1U); break;   /* Xerb1 */
                       default:        /* Xerb[.] */
                         goto unknown_validate_operand;
                       }
                     break;
                   default:    /* Xer[.] */
                     goto unknown_validate_operand;
                   }
                 break;
               case 's':
                 switch (*++oparg)
                   {
                   case '4':
                     switch (*++oparg)
                       {
                       case '0': used_bits |= ENCODE_ESP_SELECT_16_0 (-1U); break;     /* Xes40 */
                       case '1': used_bits |= ENCODE_ESP_SELECT_16_1 (-1U); break;     /* Xes41 */
                       case '2': used_bits |= ENCODE_ESP_SELECT_16_2 (-1U); break;     /* Xes42 */
                       case '3': used_bits |= ENCODE_ESP_SELECT_16_3 (-1U); break;     /* Xes43 */
                       case '4': used_bits |= ENCODE_ESP_SELECT_16_4 (-1U); break;     /* Xes44 */
                       default:        /* Xes4[.] */
                         goto unknown_validate_operand;
                       }
                     break;
                   case '1':
                     switch (*++oparg)
                       {
                       case '0': used_bits |= ENCODE_ESP_SELECT_2_0 (-1U); break;      /* Xes10 */
                       case '1': used_bits |= ENCODE_ESP_SELECT_2_1 (-1U); break;      /* Xes11 */
                       case '2': used_bits |= ENCODE_ESP_SELECT_2_2 (-1U); break;      /* Xes12 */
                       case '3': used_bits |= ENCODE_ESP_SELECT_2_3 (-1U); break;      /* Xes13 */
                       case '4': used_bits |= ENCODE_ESP_SELECT_2_4 (-1U); break;      /* Xes14 */
                       case '5': used_bits |= ENCODE_ESP_SELECT_2_5 (-1U); break;      /* Xes15 */
                       default:        /* Xes1[.] */
                         goto unknown_validate_operand;
                       }
                     break;
                   case '2':
                     switch (*++oparg)
                       {
                       case '0': used_bits |= ENCODE_ESP_SELECT_4_0 (-1U); break;      /* Xes20 */
                       case '1': used_bits |= ENCODE_ESP_SELECT_4_1 (-1U); break;      /* Xes21 */
                       case '2': used_bits |= ENCODE_ESP_SELECT_4_2 (-1U); break;      /* Xes22 */
                       case '3': used_bits |= ENCODE_ESP_SELECT_4_3 (-1U); break;      /* Xes23 */
                       case '4': used_bits |= ENCODE_ESP_SELECT_4_4 (-1U); break;      /* Xes24 */
                       case '5': used_bits |= ENCODE_ESP_SELECT_4_5 (-1U); break;      /* Xes25 */
                       case '6': used_bits |= ENCODE_ESP_SELECT_4_6 (-1U); break;      /* Xes26 */
                       default:        /* Xes2[.] */
                         goto unknown_validate_operand;
                       }
                     break;
                   case '3':
                     switch (*++oparg)
                       {
                       case '0': used_bits |= ENCODE_ESP_SELECT_8_0 (-1U); break;      /* Xes30 */
                       case '1': used_bits |= ENCODE_ESP_SELECT_8_1 (-1U); break;      /* Xes31 */
                       case '2': used_bits |= ENCODE_ESP_SELECT_8_2 (-1U); break;      /* Xes32 */
                       default:        /* Xes3[.] */
                         goto unknown_validate_operand;
                       }
                     break;
                   default:    /* Xes[.] */
                     goto unknown_validate_operand;
                   }
                 break;
               case 'u': used_bits |= ENCODE_ESP_UPD_4 (-1U); break;   /* Xeu */
               default:        /* Xe[.] */
                 goto unknown_validate_operand;
               }
             break;

