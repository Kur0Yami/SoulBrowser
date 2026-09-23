.class Lcom/mycompany/app/main/image/MainImageQuick$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageQuick;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageQuick;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageQuick$28;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageQuick$28;->c:Lcom/mycompany/app/main/image/MainImageQuick;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->R1:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->Q1:Lcom/mycompany/app/view/MyDialogBottom;

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
    sget v4, Lnet/kaki87/soul2/testing/R$string;->original_size:I

    .line 20
    .line 21
    sget v6, Lnet/kaki87/soul2/testing/R$string;->memory_warning_1:I

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 33
    .line 34
    sget v3, Lnet/kaki87/soul2/testing/R$string;->reduced_size:I

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x1

    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-direct {v2, v5, v3, v4, v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->t(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;I)Lcom/mycompany/app/view/MyManagerLinear;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 47
    .line 48
    new-instance v4, Lcom/mycompany/app/main/image/MainImageQuick$29;

    .line 49
    .line 50
    invoke-direct {v4, v0}, Lcom/mycompany/app/main/image/MainImageQuick$29;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v3, v1, v5, v2, v4}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 54
    .line 55
    .line 56
    iput-object v3, v0, Lcom/mycompany/app/main/image/MainImageQuick;->T1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->S1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->S1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 64
    .line 65
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->T1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->p1:Landroid/widget/LinearLayout;

    .line 71
    .line 72
    const/4 v2, 0x4

    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageQuick;->Q1:Lcom/mycompany/app/view/MyDialogBottom;

    .line 77
    .line 78
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageQuick;->R1:Lcom/mycompany/app/view/MyDialogLinear;

    .line 79
    .line 80
    new-instance v3, Lcom/mycompany/app/main/image/MainImageQuick$30;

    .line 81
    .line 82
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/image/MainImageQuick$30;-><init>(Lcom/mycompany/app/main/image/MainImageQuick;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    :goto_0
    return-void
.end method
