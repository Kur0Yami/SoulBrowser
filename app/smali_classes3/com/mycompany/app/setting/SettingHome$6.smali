.class Lcom/mycompany/app/setting/SettingHome$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingHome;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingHome;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingHome$6;->c:Lcom/mycompany/app/setting/SettingHome;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome$6;->c:Lcom/mycompany/app/setting/SettingHome;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
