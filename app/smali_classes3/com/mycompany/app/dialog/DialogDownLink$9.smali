.class Lcom/mycompany/app/dialog/DialogDownLink$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownLink$9;->c:Lcom/mycompany/app/dialog/DialogDownLink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownLink$9;->c:Lcom/mycompany/app/dialog/DialogDownLink;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->d0:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    const-string v2, "data:image/"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/16 v4, 0x100

    .line 23
    .line 24
    if-gt v2, v4, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v3, "..."

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    :goto_0
    const/4 v2, 0x0

    .line 49
    goto :goto_4

    .line 50
    :cond_2
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->U3(Ljava/lang/String;Z)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/4 v4, -0x1

    .line 59
    if-nez v3, :cond_6

    .line 60
    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v5, "."

    .line 71
    .line 72
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eq v3, v4, :cond_4

    .line 87
    .line 88
    :goto_1
    add-int/lit8 v4, v3, 0x1

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v5, "="

    .line 94
    .line 95
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eq v3, v4, :cond_5

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    :cond_6
    :goto_2
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 117
    .line 118
    if-eqz v3, :cond_7

    .line 119
    .line 120
    const v3, -0xe6892e

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_7
    const v3, -0x4c1a04

    .line 125
    .line 126
    .line 127
    :goto_3
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 128
    .line 129
    invoke-static {v1, v3, v4, v2, v5}, Lcom/mycompany/app/main/MainUtil;->s6(Ljava/lang/String;IILjava/lang/String;I)Landroid/text/SpannableString;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    :goto_4
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->p0:Ljava/lang/String;

    .line 134
    .line 135
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownLink;->q0:Landroid/text/SpannableString;

    .line 136
    .line 137
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 138
    .line 139
    if-nez v0, :cond_8

    .line 140
    .line 141
    :goto_5
    return-void

    .line 142
    :cond_8
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownLink$9$1;

    .line 143
    .line 144
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogDownLink$9$1;-><init>(Lcom/mycompany/app/dialog/DialogDownLink$9;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    .line 149
    .line 150
    return-void
.end method
