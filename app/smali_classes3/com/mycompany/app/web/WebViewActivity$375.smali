.class Lcom/mycompany/app/web/WebViewActivity$375;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$375;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$375;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->t6:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->s6:Lcom/mycompany/app/view/MyDialogBottom;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 18
    .line 19
    sget v3, Lnet/kaki87/soul2/testing/R$string;->normal_mode:I

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-direct {v2, v4, v3, v5, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 30
    .line 31
    sget v3, Lnet/kaki87/soul2/testing/R$string;->scroll_mode:I

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    invoke-direct {v2, v6, v3, v5, v4}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->t(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;I)Lcom/mycompany/app/view/MyManagerLinear;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 42
    .line 43
    new-instance v4, Lcom/mycompany/app/web/WebViewActivity$376;

    .line 44
    .line 45
    invoke-direct {v4, v0}, Lcom/mycompany/app/web/WebViewActivity$376;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v1, v6, v2, v4}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 49
    .line 50
    .line 51
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->v6:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->u6:Lcom/mycompany/app/view/MyRecyclerView;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->u6:Lcom/mycompany/app/view/MyRecyclerView;

    .line 59
    .line 60
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->v6:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->s6:Lcom/mycompany/app/view/MyDialogBottom;

    .line 66
    .line 67
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->t6:Lcom/mycompany/app/view/MyDialogLinear;

    .line 68
    .line 69
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$377;

    .line 70
    .line 71
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebViewActivity$377;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_0
    return-void
.end method
