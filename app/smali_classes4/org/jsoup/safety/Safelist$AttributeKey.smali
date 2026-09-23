.class Lorg/jsoup/safety/Safelist$AttributeKey;
.super Lorg/jsoup/safety/Safelist$TypedValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/safety/Safelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttributeKey"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$AttributeKey;
    .locals 1

    .line 1
    new-instance v0, Lorg/jsoup/safety/Safelist$AttributeKey;

    .line 2
    .line 3
    invoke-static {p0}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lorg/jsoup/safety/Safelist$TypedValue;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
