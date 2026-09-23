.class public Lcom/mycompany/app/quick/QuickNewsGoogle;
.super Lcom/mycompany/app/quick/QuickNews;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/quick/QuickNewsGoogle$LocalWebViewClient;,
        Lcom/mycompany/app/quick/QuickNewsGoogle$LocalChromeClient;,
        Lcom/mycompany/app/quick/QuickNewsGoogle$WebAppInterface;
    }
.end annotation


# static fields
.field public static final I:[Ljava/lang/String;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/util/List;

.field public G:Ljava/util/List;

.field public H:I

.field public j:Lcom/mycompany/app/main/MainActivity;

.field public k:Landroid/view/ViewGroup;

.field public l:Lcom/mycompany/app/view/MyWebSafe;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Ljava/util/ArrayList;

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:J

.field public x:Z

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v7, "PNG"

    .line 2
    .line 3
    const-string v8, "GIF"

    .line 4
    .line 5
    const-string v0, "jpg"

    .line 6
    .line 7
    const-string v1, "jpeg"

    .line 8
    .line 9
    const-string v2, "webp"

    .line 10
    .line 11
    const-string v3, "png"

    .line 12
    .line 13
    const-string v4, "gif"

    .line 14
    .line 15
    const-string v5, "JPG"

    .line 16
    .line 17
    const-string v6, "WEBP"

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/mycompany/app/quick/QuickNewsGoogle;->I:[Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public static e(Lcom/mycompany/app/quick/QuickNewsGoogle;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->l:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->D5(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->n:Z

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->n:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->l:Lcom/mycompany/app/view/MyWebSafe;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/quick/QuickNewsGoogle$5;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickNewsGoogle$5;-><init>(Lcom/mycompany/app/quick/QuickNewsGoogle;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->n:Z

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->n:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->l:Lcom/mycompany/app/view/MyWebSafe;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/quick/QuickNewsGoogle$6;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickNewsGoogle$6;-><init>(Lcom/mycompany/app/quick/QuickNewsGoogle;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "\\"

    .line 6
    .line 7
    const-string v1, "\\\\"

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "\""

    .line 14
    .line 15
    const-string v1, "\\\""

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "&"

    .line 22
    .line 23
    const-string v1, "\\u0026"

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "="

    .line 30
    .line 31
    const-string v1, "\\u003d"

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v0, ">"

    .line 38
    .line 39
    const-string v1, "\\u003e"

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/mycompany/app/quick/QuickNews$NewsListListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mycompany/app/quick/QuickNews;->b(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/mycompany/app/quick/QuickNews$NewsListListener;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickNews;->c:Landroid/os/Handler;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p2, Lcom/mycompany/app/quick/QuickNewsGoogle$1;

    .line 10
    .line 11
    invoke-direct {p2, p0}, Lcom/mycompany/app/quick/QuickNewsGoogle$1;-><init>(Lcom/mycompany/app/quick/QuickNewsGoogle;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickNews;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->M(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/mycompany/app/quick/QuickNews;->c()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->l:Lcom/mycompany/app/view/MyWebSafe;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->m:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-boolean v2, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->m:Z

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->l:Lcom/mycompany/app/view/MyWebSafe;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->l:Lcom/mycompany/app/view/MyWebSafe;

    .line 30
    .line 31
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->j:Lcom/mycompany/app/main/MainActivity;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->k:Landroid/view/ViewGroup;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->t:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->v:Ljava/lang/String;

    .line 38
    .line 39
    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    :cond_0
    iget p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->q:I

    .line 10
    .line 11
    const/16 v0, 0x14

    .line 12
    .line 13
    if-ge p1, v0, :cond_3

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->p:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    iput p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->q:I

    .line 22
    .line 23
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickNews;->c:Landroid/os/Handler;

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    new-instance v0, Lcom/mycompany/app/quick/QuickNewsGoogle$11;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickNewsGoogle$11;-><init>(Lcom/mycompany/app/quick/QuickNewsGoogle;)V

    .line 31
    .line 32
    .line 33
    const-wide/16 v1, 0xc8

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->t:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/mycompany/app/quick/QuickNewsGoogle;->g(Ljava/util/List;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :cond_4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->G:Ljava/util/List;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickNews;->c:Landroid/os/Handler;

    .line 48
    .line 49
    if-nez p1, :cond_5

    .line 50
    .line 51
    :goto_0
    return-void

    .line 52
    :cond_5
    new-instance v0, Lcom/mycompany/app/quick/QuickNewsGoogle$12;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickNewsGoogle$12;-><init>(Lcom/mycompany/app/quick/QuickNewsGoogle;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final g(Ljava/util/List;)Ljava/util/List;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_8

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_4

    .line 11
    :cond_0
    new-instance v1, Lcom/mycompany/app/quick/QuickNews$SortNews;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    invoke-static {p1}, Lcom/mycompany/app/quick/QuickNews;->a(Ljava/util/List;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickNews;->a:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v1, v1, Lcom/mycompany/app/data/DataNews;->a:Ljava/util/List;

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    :cond_1
    :goto_0
    move-object v0, v1

    .line 34
    goto :goto_3

    .line 35
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eq v2, v3, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const/4 v3, 0x0

    .line 49
    :goto_1
    if-ge v3, v2, :cond_1

    .line 50
    .line 51
    iget-object v4, p0, Lcom/mycompany/app/quick/QuickNews;->a:Landroid/content/Context;

    .line 52
    .line 53
    if-nez v4, :cond_4

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 61
    .line 62
    if-nez v4, :cond_5

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_5
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 70
    .line 71
    if-nez v5, :cond_6

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_6
    iget-object v6, v5, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-nez v6, :cond_7

    .line 81
    .line 82
    iget-object v6, v5, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v6, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 85
    .line 86
    iput-object v0, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->e:Ljava/lang/String;

    .line 87
    .line 88
    :cond_7
    iget-object v5, v5, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 89
    .line 90
    iput-object v5, v4, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 91
    .line 92
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :goto_3
    return-object v0

    .line 96
    :cond_8
    :goto_4
    invoke-static {v0}, Lcom/mycompany/app/quick/QuickNews;->a(Ljava/util/List;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    return-object p1
.end method

.method public final h(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/mycompany/app/quick/QuickNews$SortNews;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :catch_0
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/quick/QuickNews;->a(Ljava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->m()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickNews;->a:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Lcom/mycompany/app/data/DataNews;->b(Ljava/util/List;)J

    .line 35
    .line 36
    .line 37
    return-object p1
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_c

    .line 7
    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_c

    .line 13
    .line 14
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto/16 :goto_6

    .line 21
    .line 22
    :cond_0
    if-eqz p6, :cond_2

    .line 23
    .line 24
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    :cond_2
    :goto_0
    move-object v0, v1

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p6

    .line 43
    :cond_4
    :goto_1
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 54
    .line 55
    if-nez v0, :cond_5

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_5
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->f:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    :goto_2
    const/4 p6, 0x7

    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    new-instance p3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 70
    .line 71
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    iput p6, p3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 75
    .line 76
    iput-object p1, p3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->f:Ljava/lang/String;

    .line 77
    .line 78
    iput-object p2, p3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->r:Ljava/lang/String;

    .line 79
    .line 80
    iget-object p1, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 81
    .line 82
    iput-object p1, p3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 83
    .line 84
    iget-object p1, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->e:Ljava/lang/String;

    .line 85
    .line 86
    iput-object p1, p3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->e:Ljava/lang/String;

    .line 87
    .line 88
    iget-object p1, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 89
    .line 90
    iput-object p1, p3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 91
    .line 92
    iget-object p1, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->q:Ljava/lang/String;

    .line 93
    .line 94
    iput-object p1, p3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->q:Ljava/lang/String;

    .line 95
    .line 96
    iget-object p1, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->t:Ljava/lang/String;

    .line 97
    .line 98
    iput-object p1, p3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->t:Ljava/lang/String;

    .line 99
    .line 100
    iget-wide p1, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->s:J

    .line 101
    .line 102
    iput-wide p1, p3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->s:J

    .line 103
    .line 104
    return-object p3

    .line 105
    :cond_6
    const-string v0, "na"

    .line 106
    .line 107
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_7

    .line 112
    .line 113
    move-object p4, v1

    .line 114
    :cond_7
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    move-object p5, v1

    .line 121
    :cond_8
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    const-wide/16 v1, 0x0

    .line 126
    .line 127
    if-nez v0, :cond_a

    .line 128
    .line 129
    const-string v0, "-"

    .line 130
    .line 131
    const-string v3, "."

    .line 132
    .line 133
    invoke-virtual {p5, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p5

    .line 137
    const-string v0, "T"

    .line 138
    .line 139
    const-string v3, " "

    .line 140
    .line 141
    invoke-virtual {p5, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p5

    .line 145
    const-string v0, "Z"

    .line 146
    .line 147
    const-string v3, ""

    .line 148
    .line 149
    invoke-virtual {p5, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p5

    .line 153
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_9

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_9
    :try_start_0
    const-string v0, "[^0-9]"

    .line 161
    .line 162
    invoke-virtual {p5, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 167
    .line 168
    .line 169
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    goto :goto_4

    .line 171
    :catch_0
    :cond_a
    :goto_3
    move-wide v3, v1

    .line 172
    :goto_4
    cmp-long v0, v3, v1

    .line 173
    .line 174
    if-nez v0, :cond_b

    .line 175
    .line 176
    iget-wide v0, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->w:J

    .line 177
    .line 178
    const-wide/16 v2, 0x1

    .line 179
    .line 180
    add-long/2addr v0, v2

    .line 181
    iput-wide v0, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->w:J

    .line 182
    .line 183
    iget-object p5, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->v:Ljava/lang/String;

    .line 184
    .line 185
    move-wide v3, v0

    .line 186
    goto :goto_5

    .line 187
    :cond_b
    iput-object p5, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->v:Ljava/lang/String;

    .line 188
    .line 189
    iput-wide v3, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->w:J

    .line 190
    .line 191
    :goto_5
    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->r:Z

    .line 193
    .line 194
    new-instance v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 195
    .line 196
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 197
    .line 198
    .line 199
    iput p6, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->a:I

    .line 200
    .line 201
    iput-object p1, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->f:Ljava/lang/String;

    .line 202
    .line 203
    iput-object p2, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->r:Ljava/lang/String;

    .line 204
    .line 205
    iput-object p3, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->e:Ljava/lang/String;

    .line 206
    .line 207
    iput-object p4, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->q:Ljava/lang/String;

    .line 208
    .line 209
    iput-object p5, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->t:Ljava/lang/String;

    .line 210
    .line 211
    iput-wide v3, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->s:J

    .line 212
    .line 213
    return-object v0

    .line 214
    :cond_c
    :goto_6
    return-object v1
.end method

.method public final j(IILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    .line 1
    iput p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->H:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    move-object v1, v0

    .line 5
    :goto_0
    if-ge p1, p2, :cond_15

    .line 6
    .line 7
    const-string v2, "\"http"

    .line 8
    .line 9
    invoke-static {p3, p1, p2, v2}, Lcom/mycompany/app/main/MainUtil;->b5(Ljava/lang/String;IILjava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-gez v2, :cond_0

    .line 14
    .line 15
    :goto_1
    move-object v2, v0

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x5

    .line 20
    .line 21
    const-string v4, "\""

    .line 22
    .line 23
    invoke-virtual {p3, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-gt v2, v3, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iput v2, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->H:I

    .line 31
    .line 32
    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->k8(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    goto/16 :goto_b

    .line 47
    .line 48
    :cond_2
    const-string v3, "/faviconV2?"

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v5, 0x1

    .line 52
    if-eqz p5, :cond_f

    .line 53
    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    goto/16 :goto_8

    .line 57
    .line 58
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    const/16 v7, 0x8

    .line 63
    .line 64
    if-ge v6, v7, :cond_4

    .line 65
    .line 66
    goto :goto_8

    .line 67
    :cond_4
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_5

    .line 72
    .line 73
    goto :goto_8

    .line 74
    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_6

    .line 79
    .line 80
    goto :goto_8

    .line 81
    :cond_6
    const/4 v3, 0x7

    .line 82
    :goto_3
    if-ge v3, v6, :cond_e

    .line 83
    .line 84
    add-int/lit8 v7, v3, 0x1

    .line 85
    .line 86
    if-ne v7, v6, :cond_7

    .line 87
    .line 88
    goto :goto_7

    .line 89
    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    const/16 v8, 0x69

    .line 94
    .line 95
    if-eq v3, v8, :cond_b

    .line 96
    .line 97
    const/16 v8, 0x49

    .line 98
    .line 99
    if-ne v3, v8, :cond_8

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_8
    if-nez v4, :cond_d

    .line 103
    .line 104
    const/16 v8, 0x61

    .line 105
    .line 106
    if-eq v3, v8, :cond_9

    .line 107
    .line 108
    const/16 v8, 0x41

    .line 109
    .line 110
    if-ne v3, v8, :cond_d

    .line 111
    .line 112
    :cond_9
    const-string v3, "rticle"

    .line 113
    .line 114
    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-nez v3, :cond_a

    .line 119
    .line 120
    const-string v3, "mp"

    .line 121
    .line 122
    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_d

    .line 127
    .line 128
    :cond_a
    move v4, v5

    .line 129
    goto :goto_6

    .line 130
    :cond_b
    :goto_4
    const-string v3, "mage"

    .line 131
    .line 132
    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_c

    .line 137
    .line 138
    :goto_5
    move v4, v5

    .line 139
    goto :goto_8

    .line 140
    :cond_c
    const-string v3, "mg"

    .line 141
    .line 142
    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_d

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_d
    :goto_6
    move v3, v7

    .line 150
    goto :goto_3

    .line 151
    :cond_e
    :goto_7
    xor-int/lit8 v4, v4, 0x1

    .line 152
    .line 153
    :goto_8
    if-eqz v4, :cond_13

    .line 154
    .line 155
    return-object v2

    .line 156
    :cond_f
    const-string v6, "https://lh3.googleusercontent.com"

    .line 157
    .line 158
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    if-eqz v6, :cond_10

    .line 163
    .line 164
    move-object v1, v2

    .line 165
    goto :goto_a

    .line 166
    :cond_10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-eqz v6, :cond_11

    .line 171
    .line 172
    goto :goto_9

    .line 173
    :cond_11
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_12

    .line 178
    .line 179
    goto :goto_9

    .line 180
    :cond_12
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    xor-int/lit8 v4, v3, 0x1

    .line 185
    .line 186
    :goto_9
    if-eqz v4, :cond_13

    .line 187
    .line 188
    return-object v2

    .line 189
    :cond_13
    :goto_a
    iget v2, p0, Lcom/mycompany/app/quick/QuickNewsGoogle;->H:I

    .line 190
    .line 191
    if-gt v2, p1, :cond_14

    .line 192
    .line 193
    return-object v1

    .line 194
    :cond_14
    move p1, v2

    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_15
    :goto_b
    return-object v1
.end method
