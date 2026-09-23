.class Lcom/mycompany/app/main/MainDownSvc$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/down/DownParseM3u8;

.field public final synthetic b:Lcom/mycompany/app/main/MainDownSvc$DownItem;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/mycompany/app/main/MainDownSvc$ParseItem;

.field public final synthetic f:Lcom/mycompany/app/main/MainDownSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc;Lcom/mycompany/app/down/DownParseM3u8;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$ParseItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$14;->f:Lcom/mycompany/app/main/MainDownSvc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainDownSvc$14;->a:Lcom/mycompany/app/down/DownParseM3u8;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/MainDownSvc$14;->b:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/main/MainDownSvc$14;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mycompany/app/main/MainDownSvc$14;->d:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/mycompany/app/main/MainDownSvc$14;->e:Lcom/mycompany/app/main/MainDownSvc$ParseItem;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$14;->f:Lcom/mycompany/app/main/MainDownSvc;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc$14;->a:Lcom/mycompany/app/down/DownParseM3u8;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/mycompany/app/main/MainDownSvc$14;->b:Lcom/mycompany/app/main/MainDownSvc$DownItem;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-boolean v3, v1, Lcom/mycompany/app/down/DownParseM3u8;->c:Z

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/mycompany/app/down/DownParseM3u8;->p()V

    .line 20
    .line 21
    .line 22
    iget-object p1, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->M0(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->f:Ljava/lang/String;

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput p1, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->I:I

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput p1, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 35
    .line 36
    sget p1, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/MainDownSvc;->G(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget-boolean v3, v1, Lcom/mycompany/app/down/DownParseM3u8;->e:Z

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    sget-boolean v3, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 48
    .line 49
    iput-object v4, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 50
    .line 51
    :cond_2
    iget-object v3, v1, Lcom/mycompany/app/down/DownParseM3u8;->g:Ljava/util/List;

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    iget-object v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v5, p0, Lcom/mycompany/app/main/MainDownSvc$14;->d:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v6, p0, Lcom/mycompany/app/main/MainDownSvc$14;->c:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v1, v6, v3, v5}, Lcom/mycompany/app/down/DownParseM3u8;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iput-object v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->h:Ljava/util/List;

    .line 72
    .line 73
    iget-object v3, v1, Lcom/mycompany/app/down/DownParseM3u8;->h:Ljava/util/ArrayList;

    .line 74
    .line 75
    iput-object v3, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->i:Ljava/util/ArrayList;

    .line 76
    .line 77
    :cond_3
    invoke-virtual {v1}, Lcom/mycompany/app/down/DownParseM3u8;->p()V

    .line 78
    .line 79
    .line 80
    sget v1, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 81
    .line 82
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc$14;->e:Lcom/mycompany/app/main/MainDownSvc$ParseItem;

    .line 83
    .line 84
    invoke-virtual {v0, v2, v4, v1, p1}, Lcom/mycompany/app/main/MainDownSvc;->H(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$M3u8Item;Lcom/mycompany/app/main/MainDownSvc$ParseItem;Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
