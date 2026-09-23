.class Lcom/mycompany/app/main/MainLangAdapter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainLangAdapter$2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainLangAdapter$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainLangAdapter$2$1;->c:Lcom/mycompany/app/main/MainLangAdapter$2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainLangAdapter$2$1;->c:Lcom/mycompany/app/main/MainLangAdapter$2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainLangAdapter$2;->f:Lcom/mycompany/app/main/MainLangAdapter;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/main/MainLangAdapter$2;->c:Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 6
    .line 7
    iget v2, v0, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->a:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v2, v3, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v2, :cond_7

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :try_start_0
    iget-object v2, v1, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object v2, v1, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-gt v2, v3, :cond_2

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    iput-object v2, v1, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 39
    .line 40
    :cond_2
    iget v2, v0, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 41
    .line 42
    iget v3, v1, Lcom/mycompany/app/main/MainLangAdapter;->h:I

    .line 43
    .line 44
    if-ne v2, v3, :cond_3

    .line 45
    .line 46
    add-int/lit16 v3, v3, -0x3e8

    .line 47
    .line 48
    iput v3, v1, Lcom/mycompany/app/main/MainLangAdapter;->h:I

    .line 49
    .line 50
    :cond_3
    iget-object v2, v1, Lcom/mycompany/app/main/MainLangAdapter;->d:Landroid/content/Context;

    .line 51
    .line 52
    iget-wide v3, v0, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->b:J

    .line 53
    .line 54
    sget-object v0, Lcom/mycompany/app/db/book/DbRecentLang;->c:Lcom/mycompany/app/db/book/DbRecentLang;

    .line 55
    .line 56
    if-eqz v2, :cond_5

    .line 57
    .line 58
    const-wide/16 v5, 0x0

    .line 59
    .line 60
    cmp-long v0, v3, v5

    .line 61
    .line 62
    if-gtz v0, :cond_4

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbRecentLang;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbRecentLang;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v2, "DbRecentLang_table"

    .line 74
    .line 75
    invoke-static {v0, v2, v3, v4}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    :cond_5
    :goto_0
    iget-object v0, v1, Lcom/mycompany/app/main/MainLangAdapter;->n:Landroid/os/Handler;

    .line 79
    .line 80
    if-nez v0, :cond_6

    .line 81
    .line 82
    new-instance v0, Landroid/os/Handler;

    .line 83
    .line 84
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, v1, Lcom/mycompany/app/main/MainLangAdapter;->n:Landroid/os/Handler;

    .line 92
    .line 93
    :cond_6
    iget-object v0, v1, Lcom/mycompany/app/main/MainLangAdapter;->n:Landroid/os/Handler;

    .line 94
    .line 95
    new-instance v1, Lcom/mycompany/app/main/MainLangAdapter$2$1$1;

    .line 96
    .line 97
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainLangAdapter$2$1$1;-><init>(Lcom/mycompany/app/main/MainLangAdapter$2$1;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :catch_0
    :cond_7
    :goto_1
    const/4 v0, 0x0

    .line 105
    iput-boolean v0, v1, Lcom/mycompany/app/main/MainLangAdapter;->m:Z

    .line 106
    .line 107
    return-void
.end method
