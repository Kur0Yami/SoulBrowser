.class Lcom/mycompany/app/setting/SettingNews$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingNews;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingNews;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingNews$10;->c:Lcom/mycompany/app/setting/SettingNews;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews$10;->c:Lcom/mycompany/app/setting/SettingNews;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingNews;->l2:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->c0:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v0, v2}, Lcom/mycompany/app/db/book/DbRecentLang;->f(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v0, v2}, Lcom/mycompany/app/db/book/DbRecentLang;->a(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->b0:I

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    iget-object v0, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v0, v2}, Lcom/mycompany/app/db/book/DbRecentLang;->f(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v0, v2}, Lcom/mycompany/app/db/book/DbRecentLang;->a(Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
