.class Lcom/mycompany/app/main/MainDownSvc$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/down/DownParseM3u8;

.field public final synthetic b:Lcom/mycompany/app/main/MainDownSvc$DownItem;

.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/mycompany/app/main/MainDownSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/down/DownParseM3u8;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$M3u8Item;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$15;->e:Lcom/mycompany/app/main/MainDownSvc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainDownSvc$15;->a:Lcom/mycompany/app/down/DownParseM3u8;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/MainDownSvc$15;->b:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/main/MainDownSvc$15;->c:Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mycompany/app/main/MainDownSvc$15;->d:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$15;->a:Lcom/mycompany/app/down/DownParseM3u8;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/down/DownParseM3u8;->e:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lcom/mycompany/app/main/MainDownSvc$15;->b:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 11
    .line 12
    iput-object v2, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 13
    .line 14
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/down/DownParseM3u8;->g:Ljava/util/List;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/mycompany/app/main/MainDownSvc$15;->c:Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iget-object v1, v4, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v5, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v6, p0, Lcom/mycompany/app/main/MainDownSvc$15;->d:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v5, v6}, Lcom/mycompany/app/down/DownParseM3u8;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->h:Ljava/util/List;

    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/down/DownParseM3u8;->h:Ljava/util/ArrayList;

    .line 39
    .line 40
    iput-object v1, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->i:Ljava/util/ArrayList;

    .line 41
    .line 42
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/down/DownParseM3u8;->p()V

    .line 43
    .line 44
    .line 45
    sget v0, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 46
    .line 47
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$15;->e:Lcom/mycompany/app/main/MainDownSvc;

    .line 48
    .line 49
    invoke-virtual {v0, v3, v4, v2, p1}, Lcom/mycompany/app/main/MainDownSvc;->H(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$M3u8Item;Lcom/mycompany/app/main/MainDownSvc$ParseItem;Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
