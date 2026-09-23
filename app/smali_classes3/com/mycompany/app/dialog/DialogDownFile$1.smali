.class Lcom/mycompany/app/dialog/DialogDownFile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownFile;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile$1;->c:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile$1;->c:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->A0:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/16 v2, 0x2e

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, -0x1

    .line 24
    const/16 v4, 0xbe

    .line 25
    .line 26
    if-eq v2, v3, :cond_2

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    sub-int/2addr v4, v5

    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-ge v2, v5, :cond_3

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v3, 0x0

    .line 52
    :cond_3
    :goto_0
    const-string v2, "Download"

    .line 53
    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-static {v4, v1, v2}, Lcom/mycompany/app/main/MainUtil;->l3(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    goto :goto_1

    .line 76
    :cond_4
    invoke-static {v4, v1, v2}, Lcom/mycompany/app/main/MainUtil;->l3(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :goto_1
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->B0:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

    .line 83
    .line 84
    invoke-static {v1}, Lcom/mycompany/app/main/MainUri;->n(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->K0:Ljava/util/ArrayList;

    .line 89
    .line 90
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

    .line 91
    .line 92
    sget-object v3, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v2, v3, v1}, Lcom/mycompany/app/main/MainUri;->m(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    sput-object v1, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

    .line 101
    .line 102
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUri;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->L0:Ljava/lang/String;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 113
    .line 114
    if-nez v0, :cond_5

    .line 115
    .line 116
    :goto_2
    return-void

    .line 117
    :cond_5
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownFile$1$1;

    .line 118
    .line 119
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogDownFile$1$1;-><init>(Lcom/mycompany/app/dialog/DialogDownFile$1;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    .line 124
    .line 125
    return-void
.end method
