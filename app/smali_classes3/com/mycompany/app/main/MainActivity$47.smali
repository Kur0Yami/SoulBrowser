.class Lcom/mycompany/app/main/MainActivity$47;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainActivity$47;->c:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity$47;->c:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_5

    .line 8
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v2, 0x1e

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-ge v1, v2, :cond_4

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    move v7, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {v1}, Lcom/mycompany/app/main/MainActivity$SystemBarListener;->b()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    move v7, v1

    .line 34
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    move v8, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-interface {v1}, Lcom/mycompany/app/main/MainActivity$SystemBarListener;->c()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    move v8, v1

    .line 45
    :goto_1
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    :goto_2
    move v9, v3

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    invoke-interface {v0}, Lcom/mycompany/app/main/MainActivity$SystemBarListener;->a()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    goto :goto_2

    .line 56
    :goto_3
    const/4 v6, 0x0

    .line 57
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/main/MainUtil;->G7(Landroid/view/Window;Landroid/view/View;ZZZZ)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_4
    iget-object v4, v0, Lcom/mycompany/app/main/MainActivity;->V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

    .line 62
    .line 63
    if-nez v4, :cond_5

    .line 64
    .line 65
    move v4, v3

    .line 66
    goto :goto_4

    .line 67
    :cond_5
    invoke-interface {v4}, Lcom/mycompany/app/main/MainActivity$SystemBarListener;->c()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    :goto_4
    if-nez v4, :cond_8

    .line 72
    .line 73
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 74
    .line 75
    if-nez v1, :cond_6

    .line 76
    .line 77
    :goto_5
    return-void

    .line 78
    :cond_6
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v2, v0, Lcom/mycompany/app/main/MainActivity;->V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

    .line 83
    .line 84
    if-nez v2, :cond_7

    .line 85
    .line 86
    move v2, v3

    .line 87
    goto :goto_6

    .line 88
    :cond_7
    invoke-interface {v2}, Lcom/mycompany/app/main/MainActivity$SystemBarListener;->a()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    :goto_6
    invoke-static {v1, v3, v2}, Lcom/mycompany/app/main/MainUtil;->F7(Landroid/view/Window;ZZ)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 96
    .line 97
    new-instance v2, Lcom/mycompany/app/main/MainActivity$48;

    .line 98
    .line 99
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainActivity$48;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_8
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    const/16 v5, 0x23

    .line 111
    .line 112
    if-lt v1, v5, :cond_9

    .line 113
    .line 114
    goto :goto_7

    .line 115
    :cond_9
    if-ge v1, v2, :cond_a

    .line 116
    .line 117
    goto :goto_7

    .line 118
    :cond_a
    invoke-static {v4, v3}, Lcom/mycompany/app/main/MainUtil;->j7(Landroid/view/Window;Z)V

    .line 119
    .line 120
    .line 121
    :goto_7
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 122
    .line 123
    new-instance v1, Lcom/mycompany/app/main/MainActivity$47$1;

    .line 124
    .line 125
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainActivity$47$1;-><init>(Lcom/mycompany/app/main/MainActivity$47;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    .line 130
    .line 131
    return-void
.end method
