           case 'e':
             switch (*++oparg)
               {
               case 'd':
                 switch (*++oparg)
                   {
                   case 'i':
                     switch (*++oparg)
                       {
                       case '2':       /* Xedi2 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_IMM2 ((int32_t) l));
                         break;        /* Xedi2 */
                       case '5':
                         switch (*++oparg)
                           {
                           case '0':   /* Xedi50 */
                             print (info->stream, dis_style_immediate, "%d",
                                    EXTRACT_ESP_IMM5_0 ((int32_t) l));
                             break;    /* Xedi50 */
                           case '1':   /* Xedi51 */
                             print (info->stream, dis_style_immediate, "%d",
                                    EXTRACT_ESP_IMM5_1 ((int32_t) l));
                             break;    /* Xedi51 */
                           default:    /* Xedi5[.] */
                             goto undefined_modifier;
                           }
                         break;
                       default:        /* Xedi[.] */
                         goto undefined_modifier;
                       }
                     break;
                   case 's':
                     switch (*++oparg)
                       {
                       case '0':       /* Xeds0 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SHAMT_0 ((int32_t) l));
                         break;        /* Xeds0 */
                       case '1':       /* Xeds1 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SHAMT_1 ((int32_t) l));
                         break;        /* Xeds1 */
                       default:        /* Xeds[.] */
                         goto undefined_modifier;
                       }
                     break;
                   default:    /* Xed[.] */
                     goto undefined_modifier;
                   }
                 break;
               case 'l':
                 switch (*++oparg)
                   {
                   case 'c':   /* Xelc */
                     print (info->stream, dis_style_immediate, "%d",
                            EXTRACT_ESP_LP_COUNT ((int32_t) l));
                     break;    /* Xelc */
                   case 'i':   /* Xeli */
                     print (info->stream, dis_style_immediate, "%d",
                            EXTRACT_ESP_LP_ID ((int32_t) l));
                     break;    /* Xeli */
                   case 'o':
                     switch (*++oparg)
                       {
                       case '1':
                         switch (*++oparg)
                           {
                           case '2':   /* Xelo12 */
                             maybe_print_address (pd, 0,
                                                  EXTRACT_ESP_LP_OFFSET_12
                                                  (l) + pc, 0);
                             print (info->stream, dis_style_address_offset,
                                    "%d",
                                    EXTRACT_ESP_LP_OFFSET_12 ((int32_t) l));
                             break;    /* Xelo12 */
                           default:    /* Xelo1[.] */
                             goto undefined_modifier;
                           }
                         break;
                       case '9':       /* Xelo9 */
                         maybe_print_address (pd, 0,
                                              EXTRACT_ESP_LP_OFFSET_9 (l) +
                                              pc, 0);
                         print (info->stream, dis_style_address_offset, "%d",
                                EXTRACT_ESP_LP_OFFSET_9 ((int32_t) l));
                         break;        /* Xelo9 */
                       default:        /* Xelo[.] */
                         goto undefined_modifier;
                       }
                     break;
                   default:    /* Xel[.] */
                     goto undefined_modifier;
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
                           case '0':   /* Xeo440 */
                             print (info->stream, dis_style_immediate, "%d",
                                    EXTRACT_ESP_OFFSET_16_16_0 ((int32_t)
                                                                l));
                             break;    /* Xeo440 */
                           case '1':   /* Xeo441 */
                             print (info->stream, dis_style_immediate, "%d",
                                    EXTRACT_ESP_OFFSET_16_16_1 ((int32_t)
                                                                l));
                             break;    /* Xeo441 */
                           case '2':   /* Xeo442 */
                             print (info->stream, dis_style_immediate, "%d",
                                    EXTRACT_ESP_OFFSET_16_16_2 ((int32_t)
                                                                l));
                             break;    /* Xeo442 */
                           default:    /* Xeo44[.] */
                             goto undefined_modifier;
                           }
                         break;
                       default:        /* Xeo4[.] */
                         goto undefined_modifier;
                       }
                     break;
                   case '8':
                     switch (*++oparg)
                       {
                       case '4':
                         switch (*++oparg)
                           {
                           case '0':   /* Xeo840 */
                             print (info->stream, dis_style_immediate, "%d",
                                    EXTRACT_ESP_OFFSET_256_16_0 ((int32_t)
                                                                 l));
                             break;    /* Xeo840 */
                           case '1':   /* Xeo841 */
                             print (info->stream, dis_style_immediate, "%d",
                                    EXTRACT_ESP_OFFSET_256_16_1 ((int32_t)
                                                                 l));
                             break;    /* Xeo841 */
                           case '2':   /* Xeo842 */
                             print (info->stream, dis_style_immediate, "%d",
                                    EXTRACT_ESP_OFFSET_256_16_2 ((int32_t)
                                                                 l));
                             break;    /* Xeo842 */
                           case '3':   /* Xeo843 */
                             print (info->stream, dis_style_immediate, "%d",
                                    EXTRACT_ESP_OFFSET_256_16_3 ((int32_t)
                                                                 l));
                             break;    /* Xeo843 */
                           default:    /* Xeo84[.] */
                             goto undefined_modifier;
                           }
                         break;
                       case '0':
                         switch (*++oparg)
                           {
                           case '0':   /* Xeo800 */
                             print (info->stream, dis_style_immediate, "%d",
                                    EXTRACT_ESP_OFFSET_256_1_0 ((int32_t)
                                                                l));
                             break;    /* Xeo800 */
                           default:    /* Xeo80[.] */
                             goto undefined_modifier;
                           }
                         break;
                       case '1':
                         switch (*++oparg)
                           {
                           case '0':   /* Xeo810 */
                             print (info->stream, dis_style_immediate, "%d",
                                    EXTRACT_ESP_OFFSET_256_2_0 ((int32_t)
                                                                l));
                             break;    /* Xeo810 */
                           default:    /* Xeo81[.] */
                             goto undefined_modifier;
                           }
                         break;
                       case '2':
                         switch (*++oparg)
                           {
                           case '0':   /* Xeo820 */
                             print (info->stream, dis_style_immediate, "%d",
                                    EXTRACT_ESP_OFFSET_256_4_0 ((int32_t)
                                                                l));
                             break;    /* Xeo820 */
                           default:    /* Xeo82[.] */
                             goto undefined_modifier;
                           }
                         break;
                       case '3':
                         switch (*++oparg)
                           {
                           case '0':   /* Xeo830 */
                             print (info->stream, dis_style_immediate, "%d",
                                    EXTRACT_ESP_OFFSET_256_8_0 ((int32_t)
                                                                l));
                             break;    /* Xeo830 */
                           case '1':   /* Xeo831 */
                             print (info->stream, dis_style_immediate, "%d",
                                    EXTRACT_ESP_OFFSET_256_8_1 ((int32_t)
                                                                l));
                             break;    /* Xeo831 */
                           case '2':   /* Xeo832 */
                             print (info->stream, dis_style_immediate, "%d",
                                    EXTRACT_ESP_OFFSET_256_8_2 ((int32_t)
                                                                l));
                             break;    /* Xeo832 */
                           default:    /* Xeo83[.] */
                             goto undefined_modifier;
                           }
                         break;
                       default:        /* Xeo8[.] */
                         goto undefined_modifier;
                       }
                     break;
                   default:    /* Xeo[.] */
                     goto undefined_modifier;
                   }
                 break;
               case 'q':
                 switch (*++oparg)
                   {
                   case 'u':   /* Xequ */
                     print (info->stream, dis_style_register, "%s",
                            riscv_espv_qr_names_numeric[EXTRACT_ESP_QU (l)]);
                     break;    /* Xequ */
                   case 'v':   /* Xeqv */
                     print (info->stream, dis_style_register, "%s",
                            riscv_espv_qr_names_numeric[EXTRACT_ESP_QV (l)]);
                     break;    /* Xeqv */
                   case 'w':   /* Xeqw */
                     print (info->stream, dis_style_register, "%s",
                            riscv_espv_qr_names_numeric[EXTRACT_ESP_QW (l)]);
                     break;    /* Xeqw */
                   case 'x':   /* Xeqx */
                     print (info->stream, dis_style_register, "%s",
                            riscv_espv_qr_names_numeric[EXTRACT_ESP_QX (l)]);
                     break;    /* Xeqx */
                   case 'y':   /* Xeqy */
                     print (info->stream, dis_style_register, "%s",
                            riscv_espv_qr_names_numeric[EXTRACT_ESP_QY (l)]);
                     break;    /* Xeqy */
                   case 'z':   /* Xeqz */
                     print (info->stream, dis_style_register, "%s",
                            riscv_espv_qr_names_numeric[EXTRACT_ESP_QZ (l)]);
                     break;    /* Xeqz */
                   default:    /* Xeq[.] */
                     goto undefined_modifier;
                   }
                 break;
               case 'r':
                 switch (*++oparg)
                   {
                   case 'c':   /* Xerc */
                     /* 3rd bit of rd/rs1/rs2 absent in PIE instructions and assumed to be '1' */
                     print (info->stream, dis_style_register, "%s",
                            riscv_gpr_names_abi[EXTRACT_ESP_RD (l) | 1 << 3]);
                     break;    /* Xerc */
                   case 'a':
                     switch (*++oparg)
                       {
                       case '0':       /* Xera0 */
                         /* 3rd bit of rd/rs1/rs2 absent in PIE instructions and assumed to be '1' */
                         print (info->stream, dis_style_register, "%s",
                                riscv_gpr_names_abi[EXTRACT_ESP_RS1_0 (l) | 1 <<
                                                3]);
                         break;        /* Xera0 */
                       case '1':       /* Xera1 */
                         /* 3rd bit of rd/rs1/rs2 absent in PIE instructions and assumed to be '1' */
                         print (info->stream, dis_style_register, "%s",
                                riscv_gpr_names_abi[EXTRACT_ESP_RS1_1 (l) | 1 <<
                                                3]);
                         break;        /* Xera1 */
                       default:        /* Xera[.] */
                         goto undefined_modifier;
                       }
                     break;
                   case 'b':
                     switch (*++oparg)
                       {
                       case '0':       /* Xerb0 */
                         /* 3rd bit of rd/rs1/rs2 absent in PIE instructions and assumed to be '1' */
                         print (info->stream, dis_style_register, "%s",
                                riscv_gpr_names_abi[EXTRACT_ESP_RS2_0 (l) | 1 <<
                                                3]);
                         break;        /* Xerb0 */
                       case '1':       /* Xerb1 */
                         /* 3rd bit of rd/rs1/rs2 absent in PIE instructions and assumed to be '1' */
                         print (info->stream, dis_style_register, "%s",
                                riscv_gpr_names_abi[EXTRACT_ESP_RS2_1 (l) | 1 <<
                                                3]);
                         break;        /* Xerb1 */
                       default:        /* Xerb[.] */
                         goto undefined_modifier;
                       }
                     break;
                   default:    /* Xer[.] */
                     goto undefined_modifier;
                   }
                 break;
               case 's':
                 switch (*++oparg)
                   {
                   case '4':
                     switch (*++oparg)
                       {
                       case '0':       /* Xes40 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_16_0 ((int32_t) l));
                         break;        /* Xes40 */
                       case '1':       /* Xes41 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_16_1 ((int32_t) l));
                         break;        /* Xes41 */
                       case '2':       /* Xes42 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_16_2 ((int32_t) l));
                         break;        /* Xes42 */
                       case '3':       /* Xes43 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_16_3 ((int32_t) l));
                         break;        /* Xes43 */
                       case '4':       /* Xes44 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_16_4 ((int32_t) l));
                         break;        /* Xes44 */
                       default:        /* Xes4[.] */
                         goto undefined_modifier;
                       }
                     break;
                   case '1':
                     switch (*++oparg)
                       {
                       case '0':       /* Xes10 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_2_0 ((int32_t) l));
                         break;        /* Xes10 */
                       case '1':       /* Xes11 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_2_1 ((int32_t) l));
                         break;        /* Xes11 */
                       case '2':       /* Xes12 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_2_2 ((int32_t) l));
                         break;        /* Xes12 */
                       case '3':       /* Xes13 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_2_3 ((int32_t) l));
                         break;        /* Xes13 */
                       case '4':       /* Xes14 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_2_4 ((int32_t) l));
                         break;        /* Xes14 */
                       case '5':       /* Xes15 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_2_5 ((int32_t) l));
                         break;        /* Xes15 */
                       default:        /* Xes1[.] */
                         goto undefined_modifier;
                       }
                     break;
                   case '2':
                     switch (*++oparg)
                       {
                       case '0':       /* Xes20 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_4_0 ((int32_t) l));
                         break;        /* Xes20 */
                       case '1':       /* Xes21 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_4_1 ((int32_t) l));
                         break;        /* Xes21 */
                       case '2':       /* Xes22 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_4_2 ((int32_t) l));
                         break;        /* Xes22 */
                       case '3':       /* Xes23 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_4_3 ((int32_t) l));
                         break;        /* Xes23 */
                       case '4':       /* Xes24 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_4_4 ((int32_t) l));
                         break;        /* Xes24 */
                       case '5':       /* Xes25 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_4_5 ((int32_t) l));
                         break;        /* Xes25 */
                       case '6':       /* Xes26 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_4_6 ((int32_t) l));
                         break;        /* Xes26 */
                       default:        /* Xes2[.] */
                         goto undefined_modifier;
                       }
                     break;
                   case '3':
                     switch (*++oparg)
                       {
                       case '0':       /* Xes30 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_8_0 ((int32_t) l));
                         break;        /* Xes30 */
                       case '1':       /* Xes31 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_8_1 ((int32_t) l));
                         break;        /* Xes31 */
                       case '2':       /* Xes32 */
                         print (info->stream, dis_style_immediate, "%d",
                                EXTRACT_ESP_SELECT_8_2 ((int32_t) l));
                         break;        /* Xes32 */
                       default:        /* Xes3[.] */
                         goto undefined_modifier;
                       }
                     break;
                   default:    /* Xes[.] */
                     goto undefined_modifier;
                   }
                 break;
               case 'u':       /* Xeu */
                 print (info->stream, dis_style_immediate, "%d",
                        EXTRACT_ESP_UPD_4 ((int32_t) l));
                 break;        /* Xeu */
               default:        /* Xe[.] */
                 goto undefined_modifier;
               }
             break;
