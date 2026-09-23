.class Lcom/mycompany/app/dialog/DialogEditArea$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditArea;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditArea$9;->c:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea$9;->c:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->u0:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->w0:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditArea;->A0:Ljava/util/ArrayList;

    .line 15
    .line 16
    if-eqz v2, :cond_b

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, -0x1

    .line 31
    const/4 v5, 0x0

    .line 32
    move v6, v4

    .line 33
    :goto_0
    if-ge v5, v3, :cond_9

    .line 34
    .line 35
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    add-int/lit8 v5, v5, 0x1

    .line 40
    .line 41
    check-cast v7, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 42
    .line 43
    iget v8, v7, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->a:I

    .line 44
    .line 45
    const/4 v9, 0x2

    .line 46
    if-ne v8, v9, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget-boolean v8, v7, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->i:Z

    .line 50
    .line 51
    if-nez v8, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    iget-object v8, v7, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->h:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-eqz v8, :cond_4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    if-ne v6, v4, :cond_5

    .line 64
    .line 65
    iget v6, v7, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->b:I

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_5
    iget v8, v7, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->b:I

    .line 69
    .line 70
    if-eq v6, v8, :cond_7

    .line 71
    .line 72
    if-eqz v1, :cond_6

    .line 73
    .line 74
    const-string v6, ">"

    .line 75
    .line 76
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :cond_6
    move v6, v8

    .line 80
    :cond_7
    :goto_1
    if-nez v1, :cond_8

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    :cond_8
    iget-object v7, v7, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->h:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_9
    if-nez v1, :cond_a

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->u0:Ljava/lang/String;

    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditArea;->s0:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v2, "##"

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditArea;->u0:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->w0:Ljava/lang/String;

    .line 127
    .line 128
    :cond_b
    :goto_2
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 129
    .line 130
    if-nez v0, :cond_c

    .line 131
    .line 132
    return-void

    .line 133
    :cond_c
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditArea$9$1;

    .line 134
    .line 135
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogEditArea$9$1;-><init>(Lcom/mycompany/app/dialog/DialogEditArea$9;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    .line 140
    .line 141
    return-void
.end method
