.class public Lcom/mycompany/app/gdrive/DataGdrive;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/gdrive/DataGdrive$GdriveItem;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;


# direct methods
.method public static b(Landroid/content/Context;)Lcom/mycompany/app/gdrive/DataGdrive;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/mycompany/app/gdrive/DataGdrive;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainApp;->G0:Lcom/mycompany/app/gdrive/DataGdrive;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    const-class v0, Lcom/mycompany/app/gdrive/DataGdrive;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainApp;->G0:Lcom/mycompany/app/gdrive/DataGdrive;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    new-instance v1, Lcom/mycompany/app/gdrive/DataGdrive;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/main/MainApp;->G0:Lcom/mycompany/app/gdrive/DataGdrive;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    monitor-exit v0

    .line 35
    goto :goto_2

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/mycompany/app/main/MainApp;->G0:Lcom/mycompany/app/gdrive/DataGdrive;

    .line 39
    .line 40
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/gdrive/DataGdrive$GdriveItem;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/mycompany/app/gdrive/DataGdrive$GdriveItem;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/gdrive/DataGdrive;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/mycompany/app/gdrive/DataGdrive;->a:Ljava/util/ArrayList;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/gdrive/DataGdrive;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/gdrive/DataGdrive;->b:Ljava/util/ArrayList;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget-object v1, p1, Lcom/mycompany/app/gdrive/DataGdrive$GdriveItem;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    :goto_0
    return-void

    .line 42
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/gdrive/DataGdrive;->a:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/mycompany/app/gdrive/DataGdrive;->b:Ljava/util/ArrayList;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/mycompany/app/gdrive/DataGdrive$GdriveItem;->a:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/mycompany/app/gdrive/DataGdrive$GdriveItem;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, v0, Lcom/mycompany/app/gdrive/DataGdrive$GdriveItem;->a:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p2, v0, Lcom/mycompany/app/gdrive/DataGdrive$GdriveItem;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/gdrive/DataGdrive;->a:Ljava/util/ArrayList;

    .line 25
    .line 26
    if-eqz p1, :cond_5

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_5

    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/gdrive/DataGdrive;->b:Ljava/util/ArrayList;

    .line 35
    .line 36
    if-eqz p1, :cond_5

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/gdrive/DataGdrive;->b:Ljava/util/ArrayList;

    .line 46
    .line 47
    iget-object p2, v0, Lcom/mycompany/app/gdrive/DataGdrive$GdriveItem;->a:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-ltz p1, :cond_4

    .line 54
    .line 55
    iget-object p2, p0, Lcom/mycompany/app/gdrive/DataGdrive;->a:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-lt p1, p2, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    iget-object p2, p0, Lcom/mycompany/app/gdrive/DataGdrive;->a:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mycompany/app/gdrive/DataGdrive;->a(Lcom/mycompany/app/gdrive/DataGdrive$GdriveItem;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_5
    :goto_2
    invoke-virtual {p0, v0}, Lcom/mycompany/app/gdrive/DataGdrive;->a(Lcom/mycompany/app/gdrive/DataGdrive$GdriveItem;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
