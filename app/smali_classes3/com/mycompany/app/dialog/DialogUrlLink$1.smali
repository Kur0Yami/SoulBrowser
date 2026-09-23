.class Lcom/mycompany/app/dialog/DialogUrlLink$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogUrlLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$1;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink$1;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->c0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/16 v3, 0x64

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-nez v1, :cond_5

    .line 14
    .line 15
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->k0:Z

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->c0:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->D0(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v1, v5

    .line 31
    :goto_0
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-le v5, v3, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :cond_1
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->d0:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->c0:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/4 v6, 0x2

    .line 63
    if-le v1, v6, :cond_3

    .line 64
    .line 65
    const-string v1, "."

    .line 66
    .line 67
    invoke-virtual {v5, v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const/4 v6, 0x4

    .line 83
    if-le v1, v6, :cond_4

    .line 84
    .line 85
    const-string v1, "www."

    .line 86
    .line 87
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    move-object v1, v5

    .line 99
    :goto_1
    const/4 v5, 0x0

    .line 100
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->y2(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->e0:Ljava/lang/String;

    .line 105
    .line 106
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_8

    .line 113
    .line 114
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->l0:Z

    .line 115
    .line 116
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->D0(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_6

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_6
    move-object v1, v4

    .line 130
    :goto_2
    if-eqz v1, :cond_7

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-le v4, v3, :cond_7

    .line 137
    .line 138
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    :cond_7
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->g0:Ljava/lang/String;

    .line 143
    .line 144
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 145
    .line 146
    if-nez v1, :cond_9

    .line 147
    .line 148
    return-void

    .line 149
    :cond_9
    new-instance v2, Lcom/mycompany/app/dialog/DialogUrlLink$2;

    .line 150
    .line 151
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogUrlLink$2;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    .line 156
    .line 157
    return-void
.end method
