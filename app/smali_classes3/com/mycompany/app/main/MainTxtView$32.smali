.class Lcom/mycompany/app/main/MainTxtView$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTxtView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTxtView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView$32;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView$32;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->L1:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->K1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    iget v2, v0, Lcom/mycompany/app/main/MainTxtView;->S2:I

    .line 14
    .line 15
    if-ltz v2, :cond_7

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainTxtAdapter;->d()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lt v2, v1, :cond_1

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->K1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->s(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_4

    .line 32
    .line 33
    iget v1, v0, Lcom/mycompany/app/main/MainTxtView;->S2:I

    .line 34
    .line 35
    iget-object v3, v0, Lcom/mycompany/app/main/MainTxtView;->K1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ge v1, v3, :cond_2

    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->O1:Landroid/widget/RelativeLayout;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget-object v3, v0, Lcom/mycompany/app/main/MainTxtView;->K1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 50
    .line 51
    invoke-virtual {v3, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->k1(II)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget v1, v0, Lcom/mycompany/app/main/MainTxtView;->S2:I

    .line 56
    .line 57
    iget-object v3, v0, Lcom/mycompany/app/main/MainTxtView;->K1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 58
    .line 59
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-le v1, v3, :cond_3

    .line 64
    .line 65
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 66
    .line 67
    iget-object v3, v0, Lcom/mycompany/app/main/MainTxtView;->I1:Lcom/mycompany/app/view/MyRoundItem;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    iget-object v4, v0, Lcom/mycompany/app/main/MainTxtView;->Q1:Landroid/widget/LinearLayout;

    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    sub-int/2addr v3, v4

    .line 80
    iget-object v4, v0, Lcom/mycompany/app/main/MainTxtView;->K1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 81
    .line 82
    sub-int/2addr v3, v1

    .line 83
    invoke-virtual {v4, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->k1(II)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->K1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->x0(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    float-to-int v3, v3

    .line 98
    iget-object v4, v0, Lcom/mycompany/app/main/MainTxtView;->O1:Landroid/widget/RelativeLayout;

    .line 99
    .line 100
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-ge v3, v4, :cond_5

    .line 105
    .line 106
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->K1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 107
    .line 108
    invoke-virtual {v1, v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->k1(II)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    add-int/2addr v3, v1

    .line 117
    iget-object v4, v0, Lcom/mycompany/app/main/MainTxtView;->I1:Lcom/mycompany/app/view/MyRoundItem;

    .line 118
    .line 119
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    iget-object v5, v0, Lcom/mycompany/app/main/MainTxtView;->Q1:Landroid/widget/LinearLayout;

    .line 124
    .line 125
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    sub-int/2addr v4, v5

    .line 130
    if-le v3, v4, :cond_6

    .line 131
    .line 132
    if-le v4, v1, :cond_6

    .line 133
    .line 134
    iget-object v3, v0, Lcom/mycompany/app/main/MainTxtView;->K1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 135
    .line 136
    sub-int/2addr v4, v1

    .line 137
    invoke-virtual {v3, v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->k1(II)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->K1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->x0(I)V

    .line 144
    .line 145
    .line 146
    :cond_7
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainTxtView;->U0()V

    .line 147
    .line 148
    .line 149
    return-void
.end method
