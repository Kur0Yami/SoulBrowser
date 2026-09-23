.class Lcom/mycompany/app/main/MainDownSize$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/down/DownParseM3u8;

.field public final synthetic b:Lcom/mycompany/app/main/MainDownSvc$DownItem;

.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

.field public final synthetic d:Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;

.field public final synthetic e:Lcom/mycompany/app/main/MainDownSize;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSize;Lcom/mycompany/app/down/DownParseM3u8;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$M3u8Item;Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSize$4;->e:Lcom/mycompany/app/main/MainDownSize;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainDownSize$4;->a:Lcom/mycompany/app/down/DownParseM3u8;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/MainDownSize$4;->b:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/main/MainDownSize$4;->c:Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mycompany/app/main/MainDownSize$4;->d:Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSize$4;->a:Lcom/mycompany/app/down/DownParseM3u8;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/down/DownParseM3u8;->e:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSize$4;->b:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/down/DownParseM3u8;->p()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSize$4;->c:Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSize$4;->d:Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/mycompany/app/main/MainDownSize$4;->e:Lcom/mycompany/app/main/MainDownSize;

    .line 22
    .line 23
    invoke-virtual {v3, v2, v0, p1, v1}, Lcom/mycompany/app/main/MainDownSize;->c(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$M3u8Item;Ljava/util/List;Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
