#pragma once

namespace AK
{

template <typename T>
struct RefCounted {
   int value;

   void ref();
   void unref();
};

struct StringBase : public RefCounted<StringBase> {
    char data[100]{};
};

class String : StringBase {
public:
  String() = default;
  String(const String&) = default;
  String(String&&) = default;
  String& operator=(String const&) = default;
  String& operator=(String&&) = default;
};

}

