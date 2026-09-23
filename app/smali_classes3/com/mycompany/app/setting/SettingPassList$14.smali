.class Lcom/mycompany/app/setting/SettingPassList$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogPassInfo$PassInfoListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/setting/SettingPassList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingPassList;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPassList$14;->b:Lcom/mycompany/app/setting/SettingPassList;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingPassList$14;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget v0, Lnet/kaki87/soul2/testing/R$string;->save_success:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingPassList$14;->b:Lcom/mycompany/app/setting/SettingPassList;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lcom/mycompany/app/setting/SettingPassList;->d2:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingPassAdapter;->d:Ljava/util/List;

    .line 13
    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    iget v3, p0, Lcom/mycompany/app/setting/SettingPassList$14;->a:I

    .line 17
    .line 18
    if-ltz v3, :cond_3

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    add-int/lit8 v2, v2, -0x1

    .line 25
    .line 26
    if-lt v3, v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingPassAdapter;->d:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 43
    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iput-object p1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 48
    .line 49
    iput-object p2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingPassList;->R0()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getIcon()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
