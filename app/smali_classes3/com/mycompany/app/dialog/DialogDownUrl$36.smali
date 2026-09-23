.class Lcom/mycompany/app/dialog/DialogDownUrl$36;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$36;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$36;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->J0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->K1:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x2

    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    new-instance v3, Lcom/mycompany/app/main/MainDownAdapter;

    .line 21
    .line 22
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 23
    .line 24
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->K1:Ljava/util/List;

    .line 25
    .line 26
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->U0:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v8, Lcom/mycompany/app/dialog/DialogDownUrl$37;

    .line 29
    .line 30
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$37;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 31
    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/main/MainDownAdapter;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/util/List;ILjava/lang/String;Lcom/mycompany/app/main/MainDownAdapter$MainDownListener;)V

    .line 35
    .line 36
    .line 37
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->K0:Lcom/mycompany/app/main/MainDownAdapter;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->J0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->w(ILcom/mycompany/app/view/MyRecyclerView;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->J0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 46
    .line 47
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->K0:Lcom/mycompany/app/main/MainDownAdapter;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->J0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 53
    .line 54
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownUrl$38;

    .line 55
    .line 56
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$38;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->t(Lcom/mycompany/app/view/MyRecyclerView;Lcom/mycompany/app/view/MyDialogBottom$BotListListener;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 63
    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownUrl$39;

    .line 68
    .line 69
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$39;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    :goto_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->r1:I

    .line 77
    .line 78
    const/4 v2, 0x3

    .line 79
    const/4 v3, 0x0

    .line 80
    if-eq v1, v2, :cond_4

    .line 81
    .line 82
    const/4 v2, 0x5

    .line 83
    if-eq v1, v2, :cond_4

    .line 84
    .line 85
    const/4 v2, 0x7

    .line 86
    if-eq v1, v2, :cond_4

    .line 87
    .line 88
    const/16 v2, 0x9

    .line 89
    .line 90
    if-ne v1, v2, :cond_5

    .line 91
    .line 92
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->K1:Ljava/util/List;

    .line 93
    .line 94
    if-eqz v1, :cond_6

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    invoke-virtual {v0, v3}, Lcom/mycompany/app/dialog/DialogDownUrl;->X(I)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_6
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->F0:Lcom/mycompany/app/view/MyCoverView;

    .line 108
    .line 109
    if-nez v1, :cond_7

    .line 110
    .line 111
    :goto_2
    return-void

    .line 112
    :cond_7
    const/16 v2, 0x8

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v3}, Lcom/mycompany/app/dialog/DialogDownUrl;->f0(Z)V

    .line 118
    .line 119
    .line 120
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->k1:Z

    .line 121
    .line 122
    if-eqz v1, :cond_8

    .line 123
    .line 124
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 125
    .line 126
    sget v4, Lnet/kaki87/soul2/testing/R$string;->video_down_guide_3:I

    .line 127
    .line 128
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    .line 134
    sget v4, Lnet/kaki87/soul2/testing/R$string;->no_down_video:I

    .line 135
    .line 136
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 137
    .line 138
    .line 139
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->H0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 140
    .line 141
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->L0:Lcom/mycompany/app/view/MyLineLinear;

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    return-void
.end method
