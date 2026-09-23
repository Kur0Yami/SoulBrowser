.class Lcom/mycompany/app/setting/SettingPassAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingPassAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingPassAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingPassAdapter$3;->c:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingPassAdapter$3;->c:Lcom/mycompany/app/setting/SettingPassAdapter;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/mycompany/app/setting/SettingPassAdapter;->v(Lcom/mycompany/app/setting/SettingPassAdapter;Landroid/view/View;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassAdapter;->d:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-ltz p1, :cond_2

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    if-lt p1, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingPassAdapter;->d:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingPassAdapter;->e:Lcom/mycompany/app/setting/SettingPassAdapter$PassListListener;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-interface {v0, p1, v1, v2}, Lcom/mycompany/app/setting/SettingPassAdapter$PassListListener;->a(ILcom/mycompany/app/main/MainItem$ChildItem;Z)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method
