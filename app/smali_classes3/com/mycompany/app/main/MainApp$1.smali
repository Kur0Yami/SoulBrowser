.class Lcom/mycompany/app/main/MainApp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainApp;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainApp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainApp$1;->c:Lcom/mycompany/app/main/MainApp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainApp$1;->c:Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget v2, Lcom/mycompany/app/main/MainApp;->X0:I

    .line 8
    .line 9
    invoke-static {}, Landroidx/appcompat/app/AppCompatDelegate;->h()Landroidx/core/os/LocaleListCompat;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/core/os/LocaleListCompat;->d()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v2, v3}, Landroidx/core/os/LocaleListCompat;->c(I)Ljava/util/Locale;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 29
    :goto_1
    sput-object v2, Lcom/mycompany/app/main/MainApp;->I1:Ljava/util/Locale;

    .line 30
    .line 31
    sput-object v2, Lcom/mycompany/app/main/MainApp;->J1:Ljava/util/Locale;

    .line 32
    .line 33
    invoke-static {}, Lcom/mycompany/app/main/MainApp;->j()Ljava/util/Locale;

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->y(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    const-wide/16 v6, 0x0

    .line 56
    .line 57
    cmp-long v2, v4, v6

    .line 58
    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    :cond_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->b()V

    .line 66
    .line 67
    .line 68
    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 69
    .line 70
    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->h:Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 71
    .line 72
    const/4 v4, -0x1

    .line 73
    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->d(I)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    :try_start_0
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->b()V

    .line 84
    .line 85
    .line 86
    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 87
    .line 88
    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->j:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 89
    .line 90
    invoke-interface {v2}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    :catch_0
    invoke-static {}, Lcom/mycompany/app/compress/CompressCache;->a()Lcom/mycompany/app/compress/CompressCache;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget-object v2, v2, Lcom/mycompany/app/compress/CompressCache;->a:Landroidx/collection/LruCache;

    .line 98
    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    invoke-virtual {v2, v4}, Landroidx/collection/LruCache;->g(I)V

    .line 102
    .line 103
    .line 104
    :cond_3
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->s(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    const/4 v2, 0x1

    .line 108
    :try_start_1
    const-string v4, "myutil"

    .line 109
    .line 110
    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sput-boolean v2, Lcom/mycompany/app/main/MainApp;->R1:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    .line 115
    :catch_1
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->U4()Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-eqz v4, :cond_4

    .line 120
    .line 121
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 122
    .line 123
    invoke-static {v1, v4, v3}, Lcom/mycompany/app/main/MainUtil;->V(Landroid/content/Context;ZZ)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    :cond_4
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainApp;->c(Lcom/mycompany/app/main/MainApp;Landroid/content/Context;Z)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_5

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    :try_start_2
    new-instance v0, Landroid/os/Handler;

    .line 134
    .line 135
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 140
    .line 141
    .line 142
    new-instance v1, Lcom/mycompany/app/main/MainApp$1$1;

    .line 143
    .line 144
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainApp$1$1;-><init>(Lcom/mycompany/app/main/MainApp$1;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 148
    .line 149
    .line 150
    :catch_2
    :goto_2
    return-void
.end method
