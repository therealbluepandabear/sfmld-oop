module graphics.rect;

struct Rect(T) {
    T left;
    T top;
    T width;
    T height;
}

alias FloatRect = Rect!(float);
alias IntRect = Rect!(int);