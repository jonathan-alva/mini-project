/*
 * Copyright (c) 2019 SAP SE or an SAP affiliate company. All rights reserved.
 */
package org.training.storefront.forms;

import de.hybris.platform.acceleratorstorefrontcommons.forms.RegisterForm;

/**
 * Form object for registration
 */
public class CustomRegisterForm extends RegisterForm
{

	private String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}
