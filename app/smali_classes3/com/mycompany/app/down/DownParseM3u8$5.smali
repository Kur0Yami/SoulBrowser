.class Lcom/mycompany/app/down/DownParseM3u8$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/down/DownParseM3u8$5;->a:Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/down/DownParseM3u8$5;->a:Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
