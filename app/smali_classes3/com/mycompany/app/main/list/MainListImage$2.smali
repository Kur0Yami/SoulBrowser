.class Lcom/mycompany/app/main/list/MainListImage$2;
.super Lcom/mycompany/app/main/MainListListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/list/MainListImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListImage$2;->a:Lcom/mycompany/app/main/list/MainListImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(ILcom/mycompany/app/main/MainItem$ChildItem;Z)V
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/mycompany/app/main/list/MainListImage$2;->a:Lcom/mycompany/app/main/list/MainListImage;

    .line 2
    .line 3
    iget-object v0, p3, Lcom/mycompany/app/main/list/MainListImage;->G1:Lcom/mycompany/app/main/MainListView;

    .line 4
    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-object v0, p3, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUri;->r(Landroid/content/Context;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 18
    .line 19
    invoke-static {p3, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget v0, p3, Lcom/mycompany/app/main/list/MainListImage;->D1:I

    .line 24
    .line 25
    const/16 v1, 0xc

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eq v0, v1, :cond_2

    .line 29
    .line 30
    iget-object v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v1, p3, Lcom/mycompany/app/main/list/MainListImage;->E1:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object p1, p3, Lcom/mycompany/app/main/list/MainListImage;->G1:Lcom/mycompany/app/main/MainListView;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p3}, Landroid/app/Activity;->finish()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    iget-object v0, p3, Lcom/mycompany/app/main/list/MainListImage;->G1:Lcom/mycompany/app/main/MainListView;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-object v0, p3, Lcom/mycompany/app/main/list/MainListImage;->G1:Lcom/mycompany/app/main/MainListView;

    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 65
    .line 66
    if-nez v1, :cond_4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {v1, p1, v2}, Lcom/mycompany/app/main/MainListAdapter;->B(IZ)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_5

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/MainListView;->p(Z)V

    .line 76
    .line 77
    .line 78
    :cond_5
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 79
    .line 80
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v1, "EXTRA_PATH"

    .line 84
    .line 85
    iget-object p2, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    const-string p2, "EXTRA_INDEX"

    .line 91
    .line 92
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    const/4 p1, -0x1

    .line 96
    invoke-virtual {p3, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3}, Landroid/app/Activity;->finish()V

    .line 100
    .line 101
    .line 102
    :cond_6
    return-void
.end method

.method public final o(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V
    .locals 0

    .line 1
    return-void
.end method
