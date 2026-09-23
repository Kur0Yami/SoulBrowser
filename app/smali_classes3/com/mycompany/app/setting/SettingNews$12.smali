.class Lcom/mycompany/app/setting/SettingNews$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingNews;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingNews;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingNews$12;->a:Lcom/mycompany/app/setting/SettingNews;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/setting/SettingNews;->n2:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews$12;->a:Lcom/mycompany/app/setting/SettingNews;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingNews;->d2:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingNews;->d2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    sget-object p1, Lcom/mycompany/app/setting/SettingNews;->o2:[I

    .line 2
    .line 3
    rem-int/lit8 p2, p2, 0x7

    .line 4
    .line 5
    aget p1, p1, p2

    .line 6
    .line 7
    sget p2, Lcom/mycompany/app/pref/PrefZtwo;->M:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->M:I

    .line 14
    .line 15
    iget-object p2, p0, Lcom/mycompany/app/setting/SettingNews$12;->a:Lcom/mycompany/app/setting/SettingNews;

    .line 16
    .line 17
    iget-object v1, p2, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 18
    .line 19
    const/16 v2, 0x10

    .line 20
    .line 21
    const-string v3, "mNewsOpen"

    .line 22
    .line 23
    invoke-static {v1, v2, p1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p2, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    sget-object v1, Lcom/mycompany/app/setting/SettingNews;->n2:[I

    .line 31
    .line 32
    aget p1, v1, p1

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-virtual {p2, v1, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return v0
.end method
