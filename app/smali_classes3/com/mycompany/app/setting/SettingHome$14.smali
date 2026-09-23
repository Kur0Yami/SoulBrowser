.class Lcom/mycompany/app/setting/SettingHome$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/quick/QuickAddAdapter$QuickListListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingHome;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingHome;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingHome$14;->a:Lcom/mycompany/app/setting/SettingHome;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome$14;->a:Lcom/mycompany/app/setting/SettingHome;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    iget-boolean p3, p1, Lcom/mycompany/app/setting/SettingHome;->q2:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p2, p3, v0}, Lcom/mycompany/app/setting/SettingHome;->Q0(Ljava/lang/String;ZZ)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method
