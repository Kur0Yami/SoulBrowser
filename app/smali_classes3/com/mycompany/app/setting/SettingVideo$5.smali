.class Lcom/mycompany/app/setting/SettingVideo$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingVideo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVideo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideo$5;->a:Lcom/mycompany/app/setting/SettingVideo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingVideo;->b2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideo$5;->a:Lcom/mycompany/app/setting/SettingVideo;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideo;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingVideo;->Y1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    const/4 p1, 0x1

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    move p2, p1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p2, 0x0

    .line 7
    :goto_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->v:Z

    .line 8
    .line 9
    if-ne v0, p2, :cond_1

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_1
    sput-boolean p2, Lcom/mycompany/app/pref/PrefPdf;->v:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideo$5;->a:Lcom/mycompany/app/setting/SettingVideo;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 17
    .line 18
    const/4 v2, 0x7

    .line 19
    const-string v3, "mIconLong"

    .line 20
    .line 21
    invoke-static {v2, v1, v3, p2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    iget-object p2, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 25
    .line 26
    if-eqz p2, :cond_3

    .line 27
    .line 28
    sget v0, Lcom/mycompany/app/setting/SettingVideo;->b2:I

    .line 29
    .line 30
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->v:Z

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    sget v0, Lnet/kaki87/soul2/testing/R$string;->video_icon_long:I

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    sget v0, Lnet/kaki87/soul2/testing/R$string;->video_icon_tap:I

    .line 38
    .line 39
    :goto_1
    const/4 v1, 0x3

    .line 40
    invoke-virtual {p2, v1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 41
    .line 42
    .line 43
    :cond_3
    :goto_2
    return p1
.end method
