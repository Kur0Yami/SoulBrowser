.class Lcom/mycompany/app/setting/SettingNews$5;
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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingNews$5;->c:Lcom/mycompany/app/setting/SettingNews;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews$5;->c:Lcom/mycompany/app/setting/SettingNews;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingNews;->Y1:[Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/mycompany/app/quick/QuickView;->l(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingNews;->X1:[Ljava/lang/String;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->N:I

    .line 16
    .line 17
    if-ltz v2, :cond_2

    .line 18
    .line 19
    array-length v1, v1

    .line 20
    if-ge v2, v1, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance v1, Lcom/mycompany/app/setting/SettingNews$5$1;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingNews$5$1;-><init>(Lcom/mycompany/app/setting/SettingNews$5;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    return-void
.end method
