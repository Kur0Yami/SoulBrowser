.class Lcom/mycompany/app/web/WebViewActivity$490$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Lcom/mycompany/app/web/WebViewActivity$490;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$490;ZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$490$1;->i:Lcom/mycompany/app/web/WebViewActivity$490;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebViewActivity$490$1;->c:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/mycompany/app/web/WebViewActivity$490$1;->f:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/mycompany/app/web/WebViewActivity$490$1;->g:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/mycompany/app/web/WebViewActivity$490$1;->h:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$490$1;->i:Lcom/mycompany/app/web/WebViewActivity$490;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$490;->g:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$490;->f:Landroid/webkit/GeolocationPermissions$Callback;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$490;->c:Landroid/webkit/PermissionRequest;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$490;->h:Lcom/mycompany/app/web/WebViewActivity;

    .line 10
    .line 11
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->um:Z

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    if-nez v4, :cond_4

    .line 15
    .line 16
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->vm:Z

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->wm:Z

    .line 22
    .line 23
    if-eqz v4, :cond_3

    .line 24
    .line 25
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Dm:Z

    .line 26
    .line 27
    if-nez v6, :cond_9

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    iget-boolean v5, p0, Lcom/mycompany/app/web/WebViewActivity$490$1;->g:Z

    .line 32
    .line 33
    :cond_1
    if-eqz v5, :cond_2

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v3, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    invoke-virtual {v3}, Landroid/webkit/PermissionRequest;->deny()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->xm:Z

    .line 48
    .line 49
    if-eqz v4, :cond_9

    .line 50
    .line 51
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Em:Z

    .line 52
    .line 53
    if-nez v4, :cond_9

    .line 54
    .line 55
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebViewActivity$490$1;->h:Z

    .line 56
    .line 57
    invoke-interface {v2, v1, v0, v5}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_4
    :goto_0
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Bm:Z

    .line 62
    .line 63
    if-nez v6, :cond_9

    .line 64
    .line 65
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Cm:Z

    .line 66
    .line 67
    if-nez v6, :cond_9

    .line 68
    .line 69
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebViewActivity$490$1;->f:Z

    .line 70
    .line 71
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebViewActivity$490$1;->c:Z

    .line 72
    .line 73
    if-eqz v4, :cond_5

    .line 74
    .line 75
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->vm:Z

    .line 76
    .line 77
    if-eqz v6, :cond_5

    .line 78
    .line 79
    if-eqz v2, :cond_7

    .line 80
    .line 81
    if-eqz v1, :cond_7

    .line 82
    .line 83
    const/4 v5, 0x1

    .line 84
    goto :goto_1

    .line 85
    :cond_5
    if-eqz v4, :cond_6

    .line 86
    .line 87
    move v5, v2

    .line 88
    goto :goto_1

    .line 89
    :cond_6
    iget-boolean v0, v0, Lcom/mycompany/app/web/WebViewActivity;->vm:Z

    .line 90
    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    move v5, v1

    .line 94
    :cond_7
    :goto_1
    if-eqz v5, :cond_8

    .line 95
    .line 96
    invoke-virtual {v3}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v3, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_8
    invoke-virtual {v3}, Landroid/webkit/PermissionRequest;->deny()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_9
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 109
    .line 110
    if-nez v4, :cond_a

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_a
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->x7:Lcom/mycompany/app/dialog/DialogPermission;

    .line 114
    .line 115
    if-eqz v4, :cond_b

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_b
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->F5()Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_c

    .line 123
    .line 124
    :goto_2
    return-void

    .line 125
    :cond_c
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->j4()V

    .line 126
    .line 127
    .line 128
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Hm:Landroid/webkit/PermissionRequest;

    .line 129
    .line 130
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Im:Ljava/lang/String;

    .line 131
    .line 132
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Jm:Landroid/webkit/GeolocationPermissions$Callback;

    .line 133
    .line 134
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->getTitle()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Km:Ljava/lang/String;

    .line 141
    .line 142
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->getUrl()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Lm:Ljava/lang/String;

    .line 149
    .line 150
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$491;

    .line 151
    .line 152
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$491;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 156
    .line 157
    .line 158
    return-void
.end method
