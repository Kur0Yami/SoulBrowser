.class Lcom/mycompany/app/main/image/MainImageQuick$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageQuick;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageQuick;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$19;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick$19;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/mycompany/app/main/image/MainImageQuick;->v0(Lcom/mycompany/app/main/image/MainImageQuick;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-static {v0, v3}, Lcom/mycompany/app/main/image/MainImageQuick;->v0(Lcom/mycompany/app/main/image/MainImageQuick;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    if-nez v4, :cond_1

    .line 16
    .line 17
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v1, Lcom/mycompany/app/main/image/MainImageQuick$19$1;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImageQuick$19$1;-><init>(Lcom/mycompany/app/main/image/MainImageQuick$19;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    if-nez v2, :cond_2

    .line 32
    .line 33
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->f1:Landroid/content/Context;

    .line 34
    .line 35
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 36
    .line 37
    invoke-static {v2, v4, v1}, Lcom/mycompany/app/main/MainUtil;->W(Landroid/content/Context;ZZ)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->f1:Landroid/content/Context;

    .line 42
    .line 43
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 44
    .line 45
    invoke-static {v2, v4, v3}, Lcom/mycompany/app/main/MainUtil;->W(Landroid/content/Context;ZZ)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->u(Ljava/lang/String;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    if-nez v4, :cond_3

    .line 54
    .line 55
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->f1:Landroid/content/Context;

    .line 56
    .line 57
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 58
    .line 59
    invoke-static {v2, v4, v1}, Lcom/mycompany/app/main/MainUtil;->W(Landroid/content/Context;ZZ)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->f1:Landroid/content/Context;

    .line 64
    .line 65
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 66
    .line 67
    invoke-static {v2, v4, v3}, Lcom/mycompany/app/main/MainUtil;->W(Landroid/content/Context;ZZ)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->u(Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 75
    .line 76
    if-nez v0, :cond_4

    .line 77
    .line 78
    :goto_1
    return-void

    .line 79
    :cond_4
    new-instance v1, Lcom/mycompany/app/main/image/MainImageQuick$19$2;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImageQuick$19$2;-><init>(Lcom/mycompany/app/main/image/MainImageQuick$19;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    .line 86
    .line 87
    return-void
.end method
