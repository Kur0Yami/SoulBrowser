.class Lcom/mycompany/app/dialog/DialogTabMini$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMini$15;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini$15;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$15$1;->c:Lcom/mycompany/app/dialog/DialogTabMini$15;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$15$1;->c:Lcom/mycompany/app/dialog/DialogTabMini$15;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini$15;->c:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->h0:Z

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogTabMini;->G(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/web/WebTabAdapter;->j:Ljava/util/List;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v2, 0x0

    .line 24
    :goto_0
    new-instance v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookTab;->f(Ljava/util/List;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    iput-wide v4, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 34
    .line 35
    invoke-static {v2, v1}, Lcom/mycompany/app/db/book/DbBookTab;->j(ILjava/util/List;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    iput-wide v4, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 40
    .line 41
    iput v2, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 42
    .line 43
    invoke-static {}, Lcom/mycompany/app/web/WebViewActivity;->o3()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {v1, v3}, Lcom/mycompany/app/web/WebViewActivity;->q3(Landroid/content/Context;Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 56
    .line 57
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->j:Z

    .line 58
    .line 59
    iput-boolean v1, v3, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 60
    .line 61
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->h0:Z

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    sput v2, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    sput v2, Lcom/mycompany/app/pref/PrefSync;->l:I

    .line 69
    .line 70
    :goto_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini;->b0:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v2, v3, v1}, Lcom/mycompany/app/db/book/DbBookTab;->o(Landroid/content/Context;Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;Z)V

    .line 73
    .line 74
    .line 75
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 76
    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    :goto_2
    return-void

    .line 80
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMini$15$1$1;

    .line 81
    .line 82
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTabMini$15$1$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$15$1;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    .line 87
    .line 88
    return-void
.end method
