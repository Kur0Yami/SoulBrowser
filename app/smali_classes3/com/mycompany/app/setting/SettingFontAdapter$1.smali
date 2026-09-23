.class Lcom/mycompany/app/setting/SettingFontAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingFontAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingFontAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingFontAdapter$1;->c:Lcom/mycompany/app/setting/SettingFontAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFontAdapter$1;->c:Lcom/mycompany/app/setting/SettingFontAdapter;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFontAdapter;->d:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    if-ltz p1, :cond_2

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-lt p1, v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFontAdapter;->d:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/mycompany/app/setting/SettingFont$FontItem;

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFontAdapter;->e:Lcom/mycompany/app/setting/SettingFontAdapter$SettingFontListener;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingFont$FontItem;->b:Ljava/lang/String;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingFont$FontItem;->c:Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {v0, v1, p1}, Lcom/mycompany/app/setting/SettingFontAdapter$SettingFontListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method
