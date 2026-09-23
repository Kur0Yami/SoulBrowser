.class Lcom/mycompany/app/dialog/DialogDownZip$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainDownSvc$DownZipListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogDownZip;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownZip;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip$18;->a:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip$18;->a:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 4
    .line 5
    return-object v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_3

    .line 4
    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    move v3, v2

    .line 12
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x3

    .line 17
    iget-object v6, p0, Lcom/mycompany/app/dialog/DialogDownZip$18;->a:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 18
    .line 19
    if-eqz v4, :cond_5

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 26
    .line 27
    iget-boolean v6, v6, Lcom/mycompany/app/dialog/DialogDownZip;->a1:Z

    .line 28
    .line 29
    if-nez v6, :cond_2

    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_2
    if-nez v4, :cond_3

    .line 34
    .line 35
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget v4, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 41
    .line 42
    if-ne v4, v5, :cond_4

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    const/4 v5, 0x4

    .line 48
    if-ne v4, v5, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_5
    iput v2, v6, Lcom/mycompany/app/dialog/DialogDownZip;->d1:I

    .line 52
    .line 53
    iput v3, v6, Lcom/mycompany/app/dialog/DialogDownZip;->e1:I

    .line 54
    .line 55
    iget v0, v6, Lcom/mycompany/app/dialog/DialogDownZip;->c1:I

    .line 56
    .line 57
    if-gez v0, :cond_6

    .line 58
    .line 59
    iput v1, v6, Lcom/mycompany/app/dialog/DialogDownZip;->c1:I

    .line 60
    .line 61
    :cond_6
    iget v0, v6, Lcom/mycompany/app/dialog/DialogDownZip;->c1:I

    .line 62
    .line 63
    if-le v2, v0, :cond_7

    .line 64
    .line 65
    iput v0, v6, Lcom/mycompany/app/dialog/DialogDownZip;->d1:I

    .line 66
    .line 67
    :cond_7
    if-le v3, v0, :cond_8

    .line 68
    .line 69
    iput v0, v6, Lcom/mycompany/app/dialog/DialogDownZip;->e1:I

    .line 70
    .line 71
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-ge v2, v0, :cond_b

    .line 76
    .line 77
    iget-boolean p1, v6, Lcom/mycompany/app/dialog/DialogDownZip;->s1:Z

    .line 78
    .line 79
    if-eqz p1, :cond_9

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_9
    const/4 p1, 0x1

    .line 83
    iput-boolean p1, v6, Lcom/mycompany/app/dialog/DialogDownZip;->s1:Z

    .line 84
    .line 85
    iget-object p1, v6, Lcom/mycompany/app/dialog/DialogDownZip;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    if-nez p1, :cond_a

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_a
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownZip$18$1;

    .line 91
    .line 92
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDownZip$18$1;-><init>(Lcom/mycompany/app/dialog/DialogDownZip$18;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_b
    iget-boolean v0, v6, Lcom/mycompany/app/dialog/DialogDownZip;->a1:Z

    .line 100
    .line 101
    if-nez v0, :cond_c

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_c
    iput-boolean v1, v6, Lcom/mycompany/app/dialog/DialogDownZip;->a1:Z

    .line 105
    .line 106
    iget v0, v6, Lcom/mycompany/app/dialog/DialogDownZip;->c1:I

    .line 107
    .line 108
    iget v1, v6, Lcom/mycompany/app/dialog/DialogDownZip;->e1:I

    .line 109
    .line 110
    if-le v0, v1, :cond_10

    .line 111
    .line 112
    new-instance v0, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_f

    .line 126
    .line 127
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 132
    .line 133
    if-nez v1, :cond_d

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_d
    iget v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 137
    .line 138
    if-eq v2, v5, :cond_e

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_e
    iget-object v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_f
    iput-object v0, v6, Lcom/mycompany/app/dialog/DialogDownZip;->h1:Ljava/util/ArrayList;

    .line 148
    .line 149
    :cond_10
    iget-object p1, v6, Lcom/mycompany/app/dialog/DialogDownZip;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 150
    .line 151
    if-nez p1, :cond_11

    .line 152
    .line 153
    :goto_3
    return-void

    .line 154
    :cond_11
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownZip$18$2;

    .line 155
    .line 156
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogDownZip$18$2;-><init>(Lcom/mycompany/app/dialog/DialogDownZip$18;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public final isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip$18;->a:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/mycompany/app/dialog/DialogDownZip;->a1:Z

    .line 4
    .line 5
    return v0
.end method
