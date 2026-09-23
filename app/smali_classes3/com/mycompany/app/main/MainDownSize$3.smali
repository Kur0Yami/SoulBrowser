.class Lcom/mycompany/app/main/MainDownSize$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/down/DownParseM3u8;

.field public final synthetic b:Lcom/mycompany/app/main/MainDownSvc$DownItem;

.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;

.field public final synthetic d:Lcom/mycompany/app/main/MainDownSize;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSize;Lcom/mycompany/app/down/DownParseM3u8;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSize$3;->d:Lcom/mycompany/app/main/MainDownSize;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainDownSize$3;->a:Lcom/mycompany/app/down/DownParseM3u8;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/MainDownSize$3;->b:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/main/MainDownSize$3;->c:Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSize$3;->c:Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSize$3;->d:Lcom/mycompany/app/main/MainDownSize;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSize$3;->a:Lcom/mycompany/app/down/DownParseM3u8;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/mycompany/app/main/MainDownSize$3;->b:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-boolean v4, v2, Lcom/mycompany/app/down/DownParseM3u8;->c:Z

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/mycompany/app/down/DownParseM3u8;->p()V

    .line 22
    .line 23
    .line 24
    iget-object p1, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->M0(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    iput v2, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->I:I

    .line 34
    .line 35
    iget-object v2, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, p1, v2}, Lcom/mycompany/app/main/MainDownSize;->b(Ljava/lang/String;Ljava/lang/String;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    check-cast v0, Lcom/mycompany/app/main/MainDownSize$1;

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/main/MainDownSize$1;->a(J)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iget-boolean v4, v2, Lcom/mycompany/app/down/DownParseM3u8;->e:Z

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    sget-boolean v4, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 53
    .line 54
    iput-object v5, v3, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 55
    .line 56
    :cond_2
    invoke-virtual {v2}, Lcom/mycompany/app/down/DownParseM3u8;->p()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v3, v5, p1, v0}, Lcom/mycompany/app/main/MainDownSize;->c(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$M3u8Item;Ljava/util/List;Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
