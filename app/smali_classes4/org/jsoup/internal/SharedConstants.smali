.class public final Lorg/jsoup/internal/SharedConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AttrRangeKey:Ljava/lang/String; = "jsoup.attrs"

.field public static final DefaultBufferSize:I = 0x2000

.field public static final DummyUri:Ljava/lang/String; = "https://dummy.example/"

.field public static final EndRangeKey:Ljava/lang/String; = "jsoup.end"

.field public static final FormSubmitTags:[Ljava/lang/String;

.field public static final RangeKey:Ljava/lang/String; = "jsoup.start"

.field public static final UseHttpClient:Ljava/lang/String; = "jsoup.useHttpClient"

.field public static final UserDataKey:Ljava/lang/String; = "/jsoup.userdata"

.field public static final XmlnsAttr:Ljava/lang/String; = "jsoup.xmlns-"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "select"

    .line 2
    .line 3
    const-string v1, "textarea"

    .line 4
    .line 5
    const-string v2, "input"

    .line 6
    .line 7
    const-string v3, "keygen"

    .line 8
    .line 9
    const-string v4, "object"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/jsoup/internal/SharedConstants;->FormSubmitTags:[Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method
