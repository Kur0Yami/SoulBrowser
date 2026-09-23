.class public Lcom/mycompany/app/quick/QuickNews;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/quick/QuickNews$NewsListListener;,
        Lcom/mycompany/app/quick/QuickNews$SortNews;,
        Lcom/mycompany/app/quick/QuickNews$SortPos;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/mycompany/app/quick/QuickNews$NewsListListener;

.field public c:Landroid/os/Handler;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/concurrent/ExecutorService;

.field public f:Ljava/lang/String;

.field public g:Ljava/text/SimpleDateFormat;

.field public h:Lj$/time/format/DateTimeFormatter;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const-string p1, "EEE, dd MMM yyyy HH:mm:ss"

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string p1, "yyyy.MM.dd HH:mm:ss"

    .line 10
    .line 11
    :goto_0
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickNews;->f:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    new-instance v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput v1, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 20
    .line 21
    invoke-interface {p0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput v0, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 30
    .line 31
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iput v2, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->o:I

    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    return-object p0

    .line 59
    :cond_3
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    iput v1, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 70
    .line 71
    iput v2, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->o:I

    .line 72
    .line 73
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    new-instance v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    const/4 v2, 0x6

    .line 82
    iput v2, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 83
    .line 84
    const/4 v2, 0x1

    .line 85
    iput v2, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->o:I

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    new-instance v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    iput v0, v2, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 96
    .line 97
    const/4 v0, 0x2

    .line 98
    iput v0, v1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->o:I

    .line 99
    .line 100
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    return-object p0
.end method


# virtual methods
.method public b(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/mycompany/app/quick/QuickNews$NewsListListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickNews;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/mycompany/app/quick/QuickNews;->b:Lcom/mycompany/app/quick/QuickNews$NewsListListener;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/mycompany/app/quick/QuickNews;->c:Landroid/os/Handler;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/mycompany/app/quick/QuickNews;->d:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickNews;->a:Landroid/content/Context;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickNews;->b:Lcom/mycompany/app/quick/QuickNews$NewsListListener;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickNews;->c:Landroid/os/Handler;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickNews;->d:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickNews;->e:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickNews;->f:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickNews;->g:Ljava/text/SimpleDateFormat;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickNews;->h:Lj$/time/format/DateTimeFormatter;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickNews;->i:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method public final d(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickNews;->e:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickNews;->a:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->i(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickNews;->e:Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    :cond_2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    return-void
.end method
