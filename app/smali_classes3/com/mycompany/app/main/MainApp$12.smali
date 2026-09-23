.class Lcom/mycompany/app/main/MainApp$12;
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
    iput-object p1, p0, Lcom/mycompany/app/main/MainApp$12;->c:Lcom/mycompany/app/main/MainApp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainApp$12;->c:Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainApp;->D:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v0, Lcom/mycompany/app/main/MainApp;->D:Z

    .line 7
    .line 8
    :try_start_0
    iget-boolean v3, v0, Lcom/mycompany/app/main/MainApp;->u:Z

    .line 9
    .line 10
    if-eqz v3, :cond_b

    .line 11
    .line 12
    iget-object v3, v0, Lcom/mycompany/app/main/MainApp;->v:Lcom/mycompany/app/main/MainDownSvc;

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/mycompany/app/main/MainDownSvc;->T()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-wide v3, v0, Lcom/mycompany/app/main/MainApp;->x:J

    .line 24
    .line 25
    const-wide/16 v5, 0x0

    .line 26
    .line 27
    cmp-long v1, v3, v5

    .line 28
    .line 29
    if-eqz v1, :cond_5

    .line 30
    .line 31
    iget v7, v0, Lcom/mycompany/app/main/MainApp;->y:I

    .line 32
    .line 33
    iget-boolean v8, v0, Lcom/mycompany/app/main/MainApp;->u:Z

    .line 34
    .line 35
    if-eqz v8, :cond_4

    .line 36
    .line 37
    iget-object v8, v0, Lcom/mycompany/app/main/MainApp;->v:Lcom/mycompany/app/main/MainDownSvc;

    .line 38
    .line 39
    if-nez v8, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    if-eqz v1, :cond_4

    .line 43
    .line 44
    if-nez v7, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {v8, v7, v3, v4}, Lcom/mycompany/app/main/MainDownSvc;->M(IJ)V

    .line 48
    .line 49
    .line 50
    :cond_4
    :goto_0
    iput-wide v5, v0, Lcom/mycompany/app/main/MainApp;->x:J

    .line 51
    .line 52
    iput v2, v0, Lcom/mycompany/app/main/MainApp;->y:I

    .line 53
    .line 54
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->z:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v3, 0x0

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->B:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 64
    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    iget-object v4, v0, Lcom/mycompany/app/main/MainApp;->z:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v5, v0, Lcom/mycompany/app/main/MainApp;->A:Ljava/lang/String;

    .line 70
    .line 71
    iget v6, v0, Lcom/mycompany/app/main/MainApp;->C:I

    .line 72
    .line 73
    invoke-static {v0, v4, v5, v1, v6}, Lcom/mycompany/app/main/MainApp;->b(Lcom/mycompany/app/main/MainApp;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;I)V

    .line 74
    .line 75
    .line 76
    iput-object v3, v0, Lcom/mycompany/app/main/MainApp;->z:Ljava/lang/String;

    .line 77
    .line 78
    iput-object v3, v0, Lcom/mycompany/app/main/MainApp;->A:Ljava/lang/String;

    .line 79
    .line 80
    iput-object v3, v0, Lcom/mycompany/app/main/MainApp;->B:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 81
    .line 82
    iput v2, v0, Lcom/mycompany/app/main/MainApp;->C:I

    .line 83
    .line 84
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->E:Ljava/util/ArrayList;

    .line 85
    .line 86
    if-eqz v1, :cond_7

    .line 87
    .line 88
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainApp;->a(Lcom/mycompany/app/main/MainApp;Ljava/util/ArrayList;)V

    .line 89
    .line 90
    .line 91
    iput-object v3, v0, Lcom/mycompany/app/main/MainApp;->E:Ljava/util/ArrayList;

    .line 92
    .line 93
    :cond_7
    iput-boolean v2, v0, Lcom/mycompany/app/main/MainApp;->w:Z

    .line 94
    .line 95
    iget-object v1, v0, Lcom/mycompany/app/main/MainApp;->G:Lcom/mycompany/app/main/MainDownSvc$DownListListener;

    .line 96
    .line 97
    if-eqz v1, :cond_8

    .line 98
    .line 99
    invoke-interface {v1}, Lcom/mycompany/app/main/MainDownSvc$DownListListener;->onConnected()V

    .line 100
    .line 101
    .line 102
    :cond_8
    iget-object v0, v0, Lcom/mycompany/app/main/MainApp;->v:Lcom/mycompany/app/main/MainDownSvc;

    .line 103
    .line 104
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->s:Ljava/util/ArrayList;

    .line 105
    .line 106
    if-nez v1, :cond_b

    .line 107
    .line 108
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainDownSvc;->B:Z

    .line 109
    .line 110
    if-eqz v1, :cond_9

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 114
    .line 115
    if-nez v1, :cond_a

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_a
    new-instance v2, Lcom/mycompany/app/main/MainDownSvc$4;

    .line 119
    .line 120
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainDownSvc$4;-><init>(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    :catch_0
    :cond_b
    :goto_1
    return-void
.end method
