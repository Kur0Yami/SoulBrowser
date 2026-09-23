.class Lcom/mycompany/app/dialog/DialogEditCmd$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditCmd;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditCmd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditCmd$11;->c:Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditCmd$11;->c:Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->e0:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookUser;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->q0(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-wide v4, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->d0:J

    .line 19
    .line 20
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->e0:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1, v4, v5, v3, v6}, Lcom/mycompany/app/db/book/DbBookUser;->f(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    iget-wide v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 29
    .line 30
    iput-wide v4, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->d0:J

    .line 31
    .line 32
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookUser;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookUser;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iget-wide v5, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->d0:J

    .line 37
    .line 38
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->e0:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v4, v5, v6}, Lcom/mycompany/app/data/book/DataBookList;->e(J)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iput-object v7, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v7, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v2, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 52
    .line 53
    :goto_0
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookUser;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookUser;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2, v3}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 58
    .line 59
    .line 60
    const-string v2, "sb_user_filter_path"

    .line 61
    .line 62
    invoke-static {v1, v2, v2}, Lcom/mycompany/app/db/book/DbBookFilter;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookFilter;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookFilter;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, v2}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const-wide/16 v1, 0x0

    .line 75
    .line 76
    iput-wide v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->d0:J

    .line 77
    .line 78
    :goto_1
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 79
    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    :goto_2
    return-void

    .line 83
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditCmd$11$1;

    .line 84
    .line 85
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogEditCmd$11$1;-><init>(Lcom/mycompany/app/dialog/DialogEditCmd$11;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    return-void
.end method
