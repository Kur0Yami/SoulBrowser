.class Lcom/mycompany/app/main/MainDownSvc$31$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc$31;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc$31;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$31$1;->c:Lcom/mycompany/app/main/MainDownSvc$31;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$31$1;->c:Lcom/mycompany/app/main/MainDownSvc$31;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc$31;->c:Lcom/mycompany/app/main/MainDownSvc;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainDownSvc;->Z()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$31$1;->c:Lcom/mycompany/app/main/MainDownSvc$31;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc$31;->c:Lcom/mycompany/app/main/MainDownSvc;

    .line 17
    .line 18
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainDownSvc;->x:Z

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    move v0, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc;->q:Lcom/mycompany/app/main/MainDownSvc$DownBusyListener;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    move v0, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-interface {v0}, Lcom/mycompany/app/main/MainDownSvc$DownBusyListener;->b()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    :goto_0
    if-eqz v0, :cond_4

    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$31$1;->c:Lcom/mycompany/app/main/MainDownSvc$31;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc$31;->c:Lcom/mycompany/app/main/MainDownSvc;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 43
    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    :goto_1
    return-void

    .line 47
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc;->U:Ljava/lang/Runnable;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$31$1;->c:Lcom/mycompany/app/main/MainDownSvc$31;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc$31;->c:Lcom/mycompany/app/main/MainDownSvc;

    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc;->U:Ljava/lang/Runnable;

    .line 59
    .line 60
    const-wide/16 v2, 0x190

    .line 61
    .line 62
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_4
    const/4 v0, 0x0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainDownSvc$31$1;->c:Lcom/mycompany/app/main/MainDownSvc$31;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/mycompany/app/main/MainDownSvc$31;->c:Lcom/mycompany/app/main/MainDownSvc;

    .line 70
    .line 71
    iget-object v1, v1, Lcom/mycompany/app/main/MainDownSvc;->h:Ljava/lang/Object;

    .line 72
    .line 73
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :try_start_1
    iget-object v4, p0, Lcom/mycompany/app/main/MainDownSvc$31$1;->c:Lcom/mycompany/app/main/MainDownSvc$31;

    .line 75
    .line 76
    iget-object v4, v4, Lcom/mycompany/app/main/MainDownSvc$31;->c:Lcom/mycompany/app/main/MainDownSvc;

    .line 77
    .line 78
    iget-object v4, v4, Lcom/mycompany/app/main/MainDownSvc;->v:Ljava/util/ArrayList;

    .line 79
    .line 80
    if-eqz v4, :cond_6

    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_5

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    iget-object v4, p0, Lcom/mycompany/app/main/MainDownSvc$31$1;->c:Lcom/mycompany/app/main/MainDownSvc$31;

    .line 90
    .line 91
    iget-object v4, v4, Lcom/mycompany/app/main/MainDownSvc$31;->c:Lcom/mycompany/app/main/MainDownSvc;

    .line 92
    .line 93
    iget-object v4, v4, Lcom/mycompany/app/main/MainDownSvc;->v:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    .line 101
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    goto :goto_4

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    goto :goto_3

    .line 105
    :catchall_1
    move-exception v2

    .line 106
    move-object v5, v2

    .line 107
    move-object v2, v0

    .line 108
    move-object v0, v5

    .line 109
    goto :goto_3

    .line 110
    :cond_6
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    return-void

    .line 112
    :goto_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 114
    :catch_0
    move-object v0, v2

    .line 115
    :catch_1
    move-object v2, v0

    .line 116
    :goto_4
    if-eqz v2, :cond_8

    .line 117
    .line 118
    iget v0, v2, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 119
    .line 120
    if-eq v0, v3, :cond_7

    .line 121
    .line 122
    const/4 v1, 0x7

    .line 123
    if-ne v0, v1, :cond_8

    .line 124
    .line 125
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$31$1;->c:Lcom/mycompany/app/main/MainDownSvc$31;

    .line 126
    .line 127
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc$31;->c:Lcom/mycompany/app/main/MainDownSvc;

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/MainDownSvc;->c0(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 130
    .line 131
    .line 132
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$31$1;->c:Lcom/mycompany/app/main/MainDownSvc$31;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc$31;->c:Lcom/mycompany/app/main/MainDownSvc;

    .line 135
    .line 136
    invoke-virtual {v0, v3}, Lcom/mycompany/app/main/MainDownSvc;->h(Z)V

    .line 137
    .line 138
    .line 139
    return-void
.end method
