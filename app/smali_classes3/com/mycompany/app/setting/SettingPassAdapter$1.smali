.class Lcom/mycompany/app/setting/SettingPassAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainListLoader$ListLoadListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingPassAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingPassAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPassAdapter$1;->a:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassAdapter$1;->a:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lcom/mycompany/app/setting/SettingPassAdapter;->v(Lcom/mycompany/app/setting/SettingPassAdapter;Landroid/view/View;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p2, Lcom/mycompany/app/view/MyRoundImage;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p2, p1, v0}, Lcom/mycompany/app/view/MyRoundImage;->r(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    :goto_0
    return-void
.end method
