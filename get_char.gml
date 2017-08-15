///get_char(char)
var char = argument0;

if (ord(char) >= ord('A') && ord(char) <= ord('Z')) {
    return (ord(char)-ord('A'));
}
if (ord(char) >= ord('a') && ord(char) <= ord('z')) {
    return (ord(char)-ord('a'))+29;
}
if (ord(char) >= ord('0') && ord(char) <= ord('9')) {
    return (ord(char)-ord('0'))+58;
}

switch char {
    case 'Ã„':
        return 26;
        break;
    case 'Ã–':
        return 27;
        break;
    case 'Ãœ':
        return 28;
        break;
    case 'Ã¤':
        return 55;
        break;
    case 'Ã¶':
        return 56;
        break;
    case 'Ã¼':
        return 57;
        break;
    case '!':
        return 68;
        break;
    case '"':
        return 69;
        break;
    case '#':
        return 70;
        break;
    case '%':
        return 71;
        break;
    case '&':
        return 72;
        break;
    case "'":
        return 73;
        break;
    case '(':
        return 74;
        break;
    case ')':
        return 75;
        break;
    case '*':
        return 76;
        break;
    case '+':
        return 77;
        break;
    case ',':
        return 78;
        break;
    case '-':
        return 79;
        break;
    case '.':
        return 80;
        break;
    case '/':
        return 81;
        break;
    case ':':
        return 82;
        break;
    case ';':
        return 83;
        break;
    case '=':
        return 84;
        break;
    case '?':
        return 85;
        break;
    case 'Â°':
        return 90;
        break;
    case '_':
        return 87;
        break;
    case ' ':
        return 88;
        break;
    case '^':
        return 91;
        break;
    case 'Â§':
        return 92;
        break;
    case '$':
        return 93;
        break;
    case 'ÃŸ':
        return 94;
        break;
    case 'Â´':
        return 95;
        break;
    case '`':
        return 96;
        break;
    case 'Â²':
        return 97;
        break;
    case 'Â³':
        return 98;
        break;
    case '{':
        return 99;
        break;
    case '}':
        return 100;
        break;
    case '[':
        return 101;
        break;
    case ']':
        return 102;
        break;
    case '\\':
        return 103;
        break;
    case '~':
        return 104;
        break;
    case '<':
        return 105;
        break;
    case '>':
        return 106;
        break;
    case '|':
        return 107;
        break;
    default:
        return 89;
        break;
}