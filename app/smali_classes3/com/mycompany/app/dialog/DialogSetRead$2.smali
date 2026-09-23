.class Lcom/mycompany/app/dialog/DialogSetRead$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetRead$2;->c:Lcom/mycompany/app/dialog/DialogSetRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetRead$2;->c:Lcom/mycompany/app/dialog/DialogSetRead;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRead;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRead;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRead;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 17
    .line 18
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_20:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRead;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    const v2, -0xc0c0c1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRead;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 33
    .line 34
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_20:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRead;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 40
    .line 41
    const/high16 v2, 0x21000000

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 44
    .line 45
    .line 46
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 52
    .line 53
    const-string v3, "TEXT"

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-direct {v2, v4, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 63
    .line 64
    const-string v3, "HTML"

    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    invoke-direct {v2, v4, v3}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter;

    .line 74
    .line 75
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetRead$3;

    .line 76
    .line 77
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogSetRead$3;-><init>(Lcom/mycompany/app/dialog/DialogSetRead;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v2, v1, v3}, Lcom/mycompany/app/main/MainSelectAdapter;-><init>(Ljava/util/ArrayList;Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V

    .line 81
    .line 82
    .line 83
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetRead;->h0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 84
    .line 85
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRead;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 86
    .line 87
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->w(ILcom/mycompany/app/view/MyRecyclerView;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRead;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 91
    .line 92
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetRead;->h0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRead;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 98
    .line 99
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetRead$4;

    .line 100
    .line 101
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetRead$4;-><init>(Lcom/mycompany/app/dialog/DialogSetRead;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRead;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 108
    .line 109
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetRead$5;

    .line 110
    .line 111
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetRead$5;-><init>(Lcom/mycompany/app/dialog/DialogSetRead;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    :goto_1
    return-void
.end method
