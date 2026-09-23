.class Lcom/mycompany/app/dialog/DialogDownUrl$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$27;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$27;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->V0:Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    invoke-interface {v1}, Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;->a()Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->getDownloaded()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_1

    .line 28
    .line 29
    move v5, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v5, v3

    .line 32
    :goto_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->getDownFail()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-nez v6, :cond_2

    .line 43
    .line 44
    move v3, v2

    .line 45
    :cond_2
    move-object v10, v4

    .line 46
    move v4, v3

    .line 47
    move v3, v5

    .line 48
    move-object v5, v10

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const/4 v4, 0x0

    .line 51
    move-object v1, v4

    .line 52
    move-object v5, v1

    .line 53
    move v4, v3

    .line 54
    :goto_1
    if-nez v3, :cond_4

    .line 55
    .line 56
    if-eqz v4, :cond_8

    .line 57
    .line 58
    :cond_4
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->K1:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_8

    .line 69
    .line 70
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    check-cast v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 75
    .line 76
    if-nez v7, :cond_6

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_6
    iget-object v8, v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v4, :cond_7

    .line 82
    .line 83
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-eqz v9, :cond_7

    .line 88
    .line 89
    const/4 v8, 0x2

    .line 90
    iput v8, v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->e:I

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_7
    if-eqz v3, :cond_5

    .line 94
    .line 95
    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_5

    .line 100
    .line 101
    iput v2, v7, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->e:I

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 105
    .line 106
    if-nez v1, :cond_9

    .line 107
    .line 108
    :goto_3
    return-void

    .line 109
    :cond_9
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownUrl$28;

    .line 110
    .line 111
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$28;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    .line 116
    .line 117
    return-void
.end method
